accessing-registration
isValidPendingRegistrationId: registrationId 
	" Answer <true> if registrationId is valid in the pending's registrations repository "
	
	self setRegisterCheckPoint.
	^ self checkPoint isValidPendingRegistrationId: registrationId