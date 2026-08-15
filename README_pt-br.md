# Write-up crackme 

# Nome: 
	Crackme.exe
# Formato: 
	PE 32bits

# HASHS:


|               MD5                |                            SHA256                                |
| -------------------------------- | ---------------------------------------------------------------- |
| 66F573036F8B99863D75743EFF84F15D | 0C7CDFDB6D4C8876E9C5BAE906FCF1CBF174F019EF45D518954885856501A0BE |


# Seções:

|  Offset  |  Address  |      Name       |
|  ------- | --------- | --------------  |
| 00000000 |  00400000 |   PE Header     |
| 00000600 |  00401000 |   .CODE         |
| 00000c00 |  00402000 |   .DATA         |
| 00000e00 |  00403000 |   .idata        |
| 00001600 |  00404000 |   .edata        |
| 00001800 |  00405000 |   .reloc        |
| 00001a00 |  00406000 |   .rsrc         |
| 00002e00 |           |   Overlay       |

# Ferramentas utilizadas para análise: 
	Die, x32dbg.

__Bibliotecas e funções utilizadas pelo programa (que são interessantes)__

|   Library  |            Imported Functions            |
| ---------- | ---------------------------------------- |
| USER32.dll |       GetDlgItemTextA, MessageBoxA       |

__Conforme documentação da WINDOWSAPI, as funções mencionadas acima possuem o seguinte comportamento:__

__[GetDlgItemTextA](https://learn.microsoft.com/en-us/windows/win32/api/winuser/nf-winuser-getdlgitemtexta)__

  "Retrieves the title or text associated with a control in a dialog box."


__[MessageBoxA](https://learn.microsoft.com/pt-br/windows/win32/api/winuser/nf-winuser-messageboxa)__

  "Displays a modal dialog box that contains a system icon, a set of buttons, and a brief application-specific message, such as status or error information. The message box returns an integer value that indicates which button the user clicked."

__Comportamento Normal do Programa__

![b_REGISTER](imgs/b_REGISTER.png)

__Inserindo valores aleatórios, temos o seguinte resultado__

|    INPUT (Name & Serial)     |            RESULT              |
| ---------------------------- | ------------------------------ |
| ![b_INPUT](imgs/b_INPUT.png) | ![b_RESULT](imgs/b_RESULT.png) |

__Debugging x32dbg__

  Para ter "pistas" inicias de onde analisar e não ficar horas debuggando linhas de código em assembly inúteis (o que é bem comum), decidi olhar as chamadas intermodulares feitas pelo binário, dessa forma, é possível ter uma leve noção de quais funções e bibliotecas o binário utiliza, otimizando a busca por "alvos de ataque" no binário.
  ![b_INTERMODULAR_CALLS](imgs/b_INTERMODULAR_CALLS.png)

As funções demarcadas em vermelho são úteis porque 
