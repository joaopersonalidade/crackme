//crackme.40137E pseudo-code:

int nameXor(char *strName)
{
	char *original_STRNAME = strName;

	while(*strName)
	{
		if(*strName < 'A')
			goto 004013AC;
		if(*strName >= 'Z')
			charCmp(strName);
		strName++;
	}
	return charSum(original_STRNAME) ^ 0x5678;
}
