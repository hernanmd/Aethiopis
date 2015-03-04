accessing
sendFrom: senderAddress to: receiverAddress subject: subjectString message: bodyString smtpServer: smtpAddress
	" See superimplementor's comment "
	" ToDo: Improve the password reading "

	^ ZdcSecureSMTPClient 
		sendFrom: senderAddress 
		password: self readPasswdFromFile
		to: receiverAddress 
		subject: subjectString 
		message: (MailMessage 
						from: senderAddress 
						to: (Array with: receiverAddress) 
						about: subjectString 
						asFollows: bodyString)
		smtpServer: self smtpServer