accessing
loginExceptions
	^ ASEmptyError , ASInvalidUsername , ASEntityNotFound , ASPasswordError , ASMaxUserFailCountError
		, ASMaxMachineFailCountError , ASMaxGlobalFailCountError , ASDenegatedAccess