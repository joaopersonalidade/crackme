def convertFunction(param):
    return chr(ord(param) - 0x20)

def keyGen(param):
    sum = 0
    for c in param:
        if c < 'A':
            return None
        if c >= 'Z':
            c = convertFunction(c)
        sum += ord(c)
    return sum ^ 0x5678

strName = str(input())
xorValue = keyGen(strName)

if xorValue == None:
    print("Error.")
else:
    print(f"{xorValue^0x1234}")
    
