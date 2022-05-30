class Coins:
    def __init__(self, amount):
        self.amount = amount

    def addCoins(self, amount):
        try:
            self.amount += amount
        except:
            print("Could not add any coins!")
    
    def removeCoins(self, amount):
        try:
            self.amount -= amount
        except:
            print("Could not remove any coins!")

    def getCoins(self):
        return self.amount

class XP:
    def __init__(self, amount):
        self.amount = amount

    def addXP(self, amount):
        try:
            self.amount += amount
        except:
            print("Could not add any XP!")
    
    def removeXP(self, amount):
        try:
            self.amount -= amount
        except:
            print("Could not remove any XP!")

    def getXP(self):
        return self.amount

class Data:
    def __init__(self, path):
        self.path = path
    
    def getCoins(self):
        import json
        with open(self.path, "r") as f:
            data = json.load(f)
            return data
    
    def getXP(self):
        import json
        with open(self.path, "r") as f:
            data = json.load(f)
            return data
    
    def _update(self, value: int, value2: int):
        with open(self.path, "w") as f:
            format_ = '{"Coins": '+ str(value) +',"XP": ' + str(value2) + '}'
            f.write(format_)

class Shop:
    def __init__(self, items: dict):
        self.items = items
    
    def getItems(self):
        return self.items