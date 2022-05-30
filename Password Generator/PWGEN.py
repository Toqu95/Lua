import random
from typing import final

words = []

file = open("words.txt", "r")
for i in file.readlines():
    words.append(i)


def generate():
    number = random.randint(0,999999)
    word = random.choice(words)
    word2 = random.choice(words)
    return word + str(number) + random.choice(["!","!!","$","$$","#","##"]) + word2.upper() + random.choice(["!","!!","$","$$","#","##"])

file = open("password.txt", "w+")
file.write(generate())
file.close()