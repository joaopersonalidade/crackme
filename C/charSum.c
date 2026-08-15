int charSum(char *strName)
{
	int sum = 0;
	
	while(*strName)
	{
		sum += *strName;
		strName++;			
	}
	
	return sum;
}
