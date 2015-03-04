accessing-registration
registerCandidateAsUser: registrationId
	" Store candidate as valid user in the users repository "

	| tmpUser |
	tmpUser := self checkPoint registerCandidateAsUser: registrationId.
	self appUseAutologin
		ifTrue: [ self user: tmpUser ].
	self setDeploymentCheckPoint.

