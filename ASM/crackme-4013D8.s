; crackme.4013D8:

004013D8 | 33C0                     | xor eax,eax                                                          |
004013DA | 33FF                     | xor edi,edi                                                          | edi:EntryPoint
004013DC | 33DB                     | xor ebx,ebx                                                          |
004013DE | 8B7424 04                | mov esi,dword ptr ss:[esp+4]                                         | esi:EntryPoint
004013E2 | B0 0A                    | mov al,A                                                             | A:'\n'
004013E4 | 8A1E                     | mov bl,byte ptr ds:[esi]                                             | esi:EntryPoint
004013E6 | 84DB                     | test bl,bl                                                           |
004013E8 | 74 0B                    | je crackme.4013F5                                                    |
004013EA | 80EB 30                  | sub bl,30                                                            |
004013ED | 0FAFF8                   | imul edi,eax                                                         | edi:EntryPoint
004013F0 | 03FB                     | add edi,ebx                                                          | edi:EntryPoint
004013F2 | 46                       | inc esi                                                              | esi:EntryPoint
004013F3 | EB ED                    | jmp crackme.4013E2                                                   |
004013F5 | 81F7 34120000            | xor edi,1234                                                         | edi:EntryPoint
004013FB | 8BDF                     | mov ebx,edi                                                          | edi:EntryPoint
004013FD | C3                       | ret                                                                  |
