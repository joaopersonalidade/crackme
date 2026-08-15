; crackme-00401228:

00401228 | 68 8E214000              | push crackme.40218E                                                  |
0040122D | E8 4C010000              | call crackme.40137E                                                  |
00401232 | 50                       | push eax                                                             |
00401233 | 68 7E214000              | push crackme.40217E                                                  |
00401238 | E8 9B010000              | call crackme.4013D8                                                  |
0040123D | 83C4 04                  | add esp,4                                                            |
00401240 | 58                       | pop eax                                                              |
00401241 | 3BC3                     | cmp eax,ebx                                                          |
00401243 | 74 07                    | je crackme.40124C                                                    |
00401245 | E8 18010000              | call crackme.401362                                                  |
0040124A | EB 9A                    | jmp crackme.4011E6                                                   |
0040124C | E8 FC000000              | call crackme.40134D                                                  |
00401251 | EB 93                    | jmp crackme.4011E6                                                   |
