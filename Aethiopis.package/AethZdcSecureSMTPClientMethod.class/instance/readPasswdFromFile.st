accessing
readPasswdFromFile

	^ (FileSystem workingDirectory / 'fromAddressPasswd.txt') readStream contents 