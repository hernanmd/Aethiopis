accessing-registration
registerCandidate: candidate
	" Store candidate as valid user in the users repository "

	self checkPoint registerCandidate: candidate.
	candidate disable. " Until confirmation "
	self user: candidate.
