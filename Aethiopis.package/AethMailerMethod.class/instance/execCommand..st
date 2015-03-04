accessing
execCommand: cmdString

	| rs notAvail |

	notAvail := 'Command not available : ' , cmdString.
	rs := Smalltalk os isUnix
		ifTrue: [ 
			AethLogger 
				infoLog: cmdString
				object: self class.			
			(PipeableOSProcess command: cmdString) output ]
		ifFalse: [ 
			AethLogger 
				warnLog: cmdString
				object: self class.				
			notAvail  ].
	^ rs