accessing
loginAdmin: usernameString password: passwordString
	" Answer <true> if usernameString and passwordString are valid for the current session "
	
	| cpUser |
	[ cpUser := (self checkPoint 
			loginAdminNamed: usernameString
			password: passwordString
			machine: self getMachineParameters) ] 
	on: self loginExceptions
	do: [ : ex | ^ self handleFailedLogin: ex ].
	self user: cpUser.
	^ true

	