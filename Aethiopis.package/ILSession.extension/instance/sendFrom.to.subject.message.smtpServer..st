*Aethiopis
sendFrom: senderAddress to: receiverAddress subject: subjectString message: mailMessage smtpServer: smtpAddress
	" Send mail using the current available/preferred mailer method "
	
	self mailerMethod 
		sendFrom: senderAddress 
		to: receiverAddress 
		subject: subjectString 
		message: mailMessage 
		smtpServer: smtpAddress
