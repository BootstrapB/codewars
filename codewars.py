def stat(strg):
    strg = strg.split(' ')
    for sublist in strg:
        print(sublist)
        print(type(sublist))
    datavec = [sublist.split('|') for sublist in strg]

if __name__=="__main__":
    stat("01|15|59, 1|47|6, 01|17|20, 1|32|34, 2|3|17")
    print("test")
