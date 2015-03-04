accessing
mailerMethod
	^ mailerMethod
		ifNil: [ mailerMethod := AethMailerMethod defaultMailer new ]