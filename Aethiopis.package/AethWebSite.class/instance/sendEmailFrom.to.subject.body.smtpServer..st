convenience
sendEmailFrom: fromAddress to: destAdress subject: subjectString body: bodyString smtpServer: smtpServer
	" Send a mail with the specified parameters  "

	self session 
			sendFrom: fromAddress 
			to: destAdress 
			subject: subjectString
			message: bodyString 
			smtpServer: smtpServer