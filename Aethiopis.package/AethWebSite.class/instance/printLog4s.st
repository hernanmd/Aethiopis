logging
printLog4s
	" Print the user accessing the receiver's method name for Log4s "

	^ String streamContents: [ :stream |
		stream nextPutAll: self session username; 
			space; 
			nextPutAll: thisContext method selector asString ] 