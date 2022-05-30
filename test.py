import keyAPI

gen = keyAPI

# setup
gen.setup()

# generate key
gen.generateKey(6, save=True)

# print keys saved in the json file
#print(gen.getJsonKeys())

# print keys not in json file
#print(gen.getTempKeys())