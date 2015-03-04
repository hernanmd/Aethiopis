accessing-registration
createCandidate: options
	" Private - Creates a cancidate user for registering purposes "
	
	self setRegisterCheckPoint	.
	options at: #IPADDRESS put: self getMachineParameters.
	^ self checkPoint createCandidate: options