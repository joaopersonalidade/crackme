//crackme.4013D8 pseudo-code:


int strToInt(char *strSerial)
{
	int number = 0;

	while(*strSerial)
	{
		*strSerial -= 0x30;
		number *= 10;
		number += *strSerial;
		strSerial++;
	}
	return number ^ 0x1234;
}
