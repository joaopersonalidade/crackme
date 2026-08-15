; 0040135C:

0040134D | 6A 30                    | push 30                                                              |
0040134F | 68 29214000              | push crackme.402129                                                  | 402129:"Good work!"
00401354 | 68 34214000              | push crackme.402134                                                  | 402134:"Great work, mate!\rNow try the next CrackMe!"
00401359 | FF75 08                  | push dword ptr ss:[ebp+8]                                            |
0040135C | E8 D9000000              | call <JMP.&MessageBoxA>                                              |
