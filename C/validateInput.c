void validateInput(char *strName, char *serialKey)
{
	int strNameXor;
	int serialKeyXor;

	strNameXor = nameXor(strName);
	serialKeyXor = strToInt(serialKey);

	if(strNameXor == serialKeyXor)
		goto crackme.0040124C;
	else
		goto crackme.00401245;
	return;
}
