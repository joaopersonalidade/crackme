;  004013BC:

004013AD | 6A 30                    | push 30                                                              |
004013AF | 68 60214000              | push crackme.402160                                                  | 402160:"No luck!"
004013B4 | 68 69214000              | push crackme.402169                                                  | 402169:"No luck there, mate!"
004013B9 | FF75 08                  | push dword ptr ss:[ebp+8]                                            |
004013BC | E8 79000000              | call <JMP.&MessageBoxA>                                              |
