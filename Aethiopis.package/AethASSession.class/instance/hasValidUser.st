testing
hasValidUser
	" Answer <true> if the user is present and validated for the receiver "

	^ self hasUser and: [ self user isEnabled ]