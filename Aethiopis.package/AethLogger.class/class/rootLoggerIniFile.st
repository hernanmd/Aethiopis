accessing
rootLoggerIniFile
	" WithDailyRollingFileAppenderTopOfDay "

	^ '[log4s]
debugEnabled=''true''
quietMode=''false''
globalLevel=''All''
;runForever=()
;runForever=''75'', ''7''
dailyRollingFileAppender=''TestDailyRollingFileAppender'', ''root'', ''dailyRollingFileTopOfDay.log'',  ''false'', ''All'', '''', ''%-15d [dailyRollingFileAppenderTopOfDay]   %-16m %p %o %l'', ''true'',  ''topOfDay''
'