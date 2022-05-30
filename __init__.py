from os import mkdir
import os
import random
import string
import json

digits = string.ascii_uppercase + string.digits

def setup():
    if os.path.isdir("Keys"):
        pass
    else:
        mkdir("Keys")
        if os.path.isfile("Keys.json"):
            pass
        else:
            with open("Keys/keys.json", "w") as f:
                f.write("")
                f.close()
            if os.path.isfile("Keys/tempkeys.txt"):
                pass
            else:
                with open("Keys/tempkeys.txt", "w") as f:
                    f.write("")
                    f.close()

def generate(lenght):
    string = ""
    for _ in range(4):
        string += "-"
        for _ in range(lenght):
            string += "".join(random.choice(digits))
    string = string[1:]
    return string

def saveKey(key):
    f = open("Keys/tempkeys.txt", "a")
    f.write(translateKey(key))
    f.close()

def translateKey(key):
    return key + "\n"

def getTempKeys():
    f = open("Keys/tempkeys.txt", "r")
    keys = f.read().split("\n")
    return keys

def getJsonKeys():
    f = open("Keys/keys.json", "r")
    keys = json.loads(f.read())
    return keys["keys"]

def saveKeysJson(keys):
    f = open("Keys/keys.json", "w")
    f.write('{"keys": ' + keys + '}')
    f.close()


def generateKey(lenght, save=False):
    key = generate(lenght)
    if save == False:
        print(f"Key: {key}")
    else:
        print(f"Key: {key}")
        saveKey(key)
        keys_jsonformat = str(getTempKeys())
        keys_jsonformat = keys_jsonformat.replace("\'", "\"")
        saveKeysJson(keys_jsonformat)

def showTempKeys():
    print(getTempKeys())

def showJsonKeys():
    print(getJsonKeys())