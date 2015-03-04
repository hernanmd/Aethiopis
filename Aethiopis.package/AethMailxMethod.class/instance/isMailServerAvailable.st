accessing
isMailServerAvailable
	" Answer <true> if receiver's SMTP Server is available for requests "

	(self smptServer notNil and: [ self smptServer notEmpty ]) ifFalse: [ ^ false ].
	[Socket 
		pingPorts: #(25 80 110) 
		on: self smptServer 
		timeOutSecs: 2 ]
	on: ConnectionTimedOut
	do: [ : ex | 
			AethLogger 
				infoLog: 'No Email server available'
				object: self class.
		^ false ].
	^ true