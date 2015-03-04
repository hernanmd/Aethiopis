accessing
username
	" Answer a <String> with the name of the receiver's configured user.  "

	^ self user isNil
		ifTrue: [ String empty ]
		ifFalse: [ self user username ]