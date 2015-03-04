accessing
checkPoint
	" Private - See CheckPoint classes for comments "

	^ checkPoint
		ifNil: [ checkPoint := self class newCheckPoint ]