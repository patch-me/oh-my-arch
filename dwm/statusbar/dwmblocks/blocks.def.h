//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "raminfo",	1,		0},
	{"", "cpuinfo",	1,		0},
	{"", "diskinfo",	1,		0},
	{"", "connectinfo",	1,		0},
	{"", "batteryinfo",	1,		0},
	{"", "dateinfo",					1,		0},
};

//sets delimiter between status commands. NULL character ('\0') means no delimiter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
