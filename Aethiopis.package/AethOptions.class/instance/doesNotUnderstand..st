accessing
doesNotUnderstand: aMessage

	^ aMessage selector isUnary
		ifTrue: [ self at: aMessage selector put: nil ]
		ifFalse: [
			(aMessage selector isKeyword and: [ aMessage arguments size = 1 ])
				ifTrue: [ 
					| key |
					key := aMessage selector allButLast.
					self at: key asSymbol put: aMessage argument ]
				ifFalse: [ super doesNotUnderstand: aMessage ] ]