Param (
        [Parameter(ValueFromPipeline=$true)]
        [String]$user = "username",
        [String]$jobname = "jobname",
        [String]$file = "filename"
    )


$fromaddress = "noreply@viking.bm" 
$toaddress =  $user+"@viking.bm" 
$Subject = ("Print To Email Job: "+$jobname) 
$body = "Print to EMail From: "+$user
$attachment = $file 
$smtpserver = "viking-bm.mail.protection.outlook.com " 

$message = new-object System.Net.Mail.MailMessage 
$message.From = $fromaddress 
$message.To.Add($toaddress)
$message.IsBodyHtml = $True 
$message.Subject = $Subject 
$attach = new-object Net.Mail.Attachment($attachment) 
$message.Attachments.Add($attach) 
$message.body = $body 
$smtp = new-object Net.Mail.SmtpClient($smtpserver) 
$smtp.Send($message)
