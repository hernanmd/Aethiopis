controllers
appHeaderContent

	^ [ : e |
		e div 
			cssClass: 'header';
			build: [ : p | p h1: self appMainTitle ].
		e div 
			cssClass: 'content';
			build: self appContent ]