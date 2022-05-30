import Generator

while True:
    input_ = input("keyAPI-Shell: ")
    if input_ == "gen":
        try:
            key = Generator.generate(5)
            print(f"Key: {key}")
        except:
            print("Error")

    if input_ == "gen -s":
        try:
            key = Generator.generate(5)
            Generator.saveKey(key)
            print(f"Key: {key} saved!")
        except:
            print("Error")
    
    if input_ == "show":
        try:
            print(Generator.getTempKeys())
        except:
            print("Error")
    
    if input_ == "save -json":
        try:
            print("1")
            keys_jsonformat = str(Generator.getTempKeys())
            keys_jsonformat = keys_jsonformat.replace("\'", "\"")
            Generator.saveKeysJson(keys_jsonformat)
        except:
            print("Error")