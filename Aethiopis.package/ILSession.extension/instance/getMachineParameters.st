*Aethiopis
getMachineParameters
	" Answer a <String> with the remote IP. Depends on Kom "
	
	^ self context request nativeRequest remoteAddress asIpString