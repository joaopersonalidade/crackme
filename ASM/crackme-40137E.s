; crackme-40137E:

0040137E | 8B7424 04                | mov esi,dword ptr ss:[esp+4]                                         | esi:EntryPoint
00401382 | 56                       | push esi                                                             | esi:EntryPoint
00401383 | 8A06                     | mov al,byte ptr ds:[esi]                                             | esi:EntryPoint
00401385 | 84C0                     | test al,al                                                           |
00401387 | 74 13                    | je crackme.40139C                                                    |
00401389 | 3C 41                    | cmp al,41                                                            | 41:'A'
0040138B | 72 1F                    | jb crackme.4013AC                                                    |
0040138D | 3C 5A                    | cmp al,5A                                                            | 5A:'Z'
0040138F | 73 03                    | jae crackme.401394                                                   |
00401391 | 46                       | inc esi                                                              | esi:EntryPoint
00401392 | EB EF                    | jmp crackme.401383                                                   |
00401394 | E8 39000000              | call crackme.4013D2                                                  |
00401399 | 46                       | inc esi                                                              | esi:EntryPoint
0040139A | EB E7                    | jmp crackme.401383                                                   |
0040139C | 5E                       | pop esi                                                              | esi:EntryPoint
0040139D | E8 20000000              | call crackme.4013C2                                                  |
004013A2 | 81F7 78560000            | xor edi,5678                                                         | edi:EntryPoint
004013A8 | 8BC7                     | mov eax,edi                                                          | edi:EntryPoint
004013AA | EB 15                    | jmp crackme.4013C1                                                   |
004013C1 | C3                       | ret                                                                  |
