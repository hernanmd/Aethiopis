accessing
sendFrom: senderAddress to: receiverAddress subject: subjectString message: mailMessage smtpServer: smtpAddress
	" See superimplementor's comment "
	
	self smptServer: smtpAddress.
	self isMailServerAvailable
		ifTrue: [ 
			self execCommand: 'echo " ' , mailMessage , 
			' " | strings | mail -v -r ' , senderAddress ,
			' -s "' , subjectString , '" ' , 	receiverAddress ]
			