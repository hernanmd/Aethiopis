accessing-registration
canRegister: candidateUser
	" Answer <true> if candidateUser can be registered "
	
	[ self checkPoint canRegister: candidateUser ] 
	on: ASEmptyError , ASInvalidUsername , ASPasswordError , ASDenegatedAccess
	do: [ : ex | self handleFailedRegistration: ex ].
	^ true

	