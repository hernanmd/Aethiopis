convenience
printHtmlList: stringCollection

	^ [ : e | | ul |
		ul := e ul.				
		stringCollection do: [ : each | | li |
			li := ul li.
			li text: each ] ].