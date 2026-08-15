; 00401378:

00401369 | 6A 30                    | push 30                                                              |
0040136B | 68 60214000              | push crackme.402160                                                  | 402160:"No luck!"
00401370 | 68 69214000              | push crackme.402169                                                  | 402169:"No luck there, mate!"
00401375 | FF75 08                  | push dword ptr ss:[ebp+8]                                            |
00401378 | E8 BD000000              | call <JMP.&MessageBoxA>                                              |
