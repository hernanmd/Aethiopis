accessing
defaultMailer
	" Answer an object for sending mails "
	
	^ Smalltalk os isUnix 
		ifTrue: [ AethMailxMethod ]
		ifFalse: [ AethZdcSecureSMTPClientMethod ]