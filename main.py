import Logic as GL
import os

# data class
data = GL.Data("Logic\data\game.json")

# coins class
coins = GL.Coins(int(data.getCoins()["Coins"]))

shop = GL.Shop({"1": 10, "2": 20})

def updateInventoryItem(path, value):
    f = open(path, 'w')
    f.write(str(value))

def checkInventoryItem(path):
    f = open(path, 'r')
    if f.read() == "0":
        return False
    else:
        return True

Plusaxe = 2
Timesaxe = 3

# XP class
xp = GL.XP(int(data.getXP()["XP"]))

# save coins
# data.updateCoins(int(coins.getCoins()))



def MainMenu():
    print("--------------------------------")
    print(f"Coins: {coins.getCoins()}")
    print("\nCommand list:")
    print("Mine Coin")
    print("Mine Block")
    print("Shop")
    print("--------------------------------")

while True:
    MainMenu()
    input_ = input("User: ")
    if input_ == "Mine Coin":
        coins.addCoins(10)
        xp.addXP(50)
        # save coins
        data._update(int(coins.getCoins()), int(xp.getXP()))
        #
        os.system("cls")
    elif input_ == "Mine Block":
        if checkInventoryItem("Logic\data\Inventory\_NoneAxe_"):
            for i in range(1000):
                try:
                    import time
                    print(f"{i} coins mined!")
                    time.sleep(0.1)
                    os.system("cls")
                except:
                    print("Could not import time module!")
            # save coins
            coins.addCoins(1000)
            xp.addXP(5000)
            data._update(int(coins.getCoins()), int(xp.getXP()))
            #
            os.system("cls")
        elif checkInventoryItem("Logic\data\Inventory\_Plusaxe_"):
            for i in range(500):
                try:
                    import time
                    print(f"{i*Plusaxe} coins mined!")
                    time.sleep(0.1/Plusaxe)
                    os.system("cls")
                except:
                    print("Could not import time module!")
            # save coins
            coins.addCoins(1000*Plusaxe)
            xp.addXP(5000)
            data._update(int(coins.getCoins()), int(xp.getXP()))
            #
            os.system("cls")
        elif checkInventoryItem("Logic\data\Inventory\_Timesaxe_"):
            for i in range(333):
                try:
                    import time
                    print(f"{i*Timesaxe} coins mined!")
                    time.sleep(0.1/Timesaxe)
                    os.system("cls")
                except:
                    print("Could not import time module!")
            # save coins
            coins.addCoins(1000*Timesaxe)
            xp.addXP(5000)
            data._update(int(coins.getCoins()), int(xp.getXP()))
            #
            os.system("cls")
    elif input_ == "Shop":
        print(f"""
Coins: {coins.getCoins()}
--------------------------------
Plusaxe: 1000, 2x
Timesaxe: 4000, 3x
--------------------------------
        """)
        option = input("Choose an option: ")
        if option == "Plusaxe":
            if coins.getCoins() >= 1000:
                if not checkInventoryItem("Logic\data\Inventory\_Plusaxe_"):
                    updateInventoryItem("Logic\data\Inventory\_Plusaxe_", 1)
                    updateInventoryItem("Logic\data\Inventory\_NoneAxe_", 0)
                    coins.removeCoins(1000)
                    data._update(int(coins.getCoins()), int(xp.getXP()))
                else:
                    os.system("cls")
                    print("You already have that item!")
            else:
                os.system("cls")
                print("Not enough coins!")
        elif option == "Timesaxe":
            if coins.getCoins() >= 4000:
                if not checkInventoryItem("Logic\data\Inventory\_Timesaxe_"):
                    updateInventoryItem("Logic\data\Inventory\_Timesaxe_", 1)
                    updateInventoryItem("Logic\data\Inventory\_NoneAxe_", 0)
                    coins.removeCoins(4000)
                    updateInventoryItem("Logic\data\Inventory\_Plusaxe_", 0)
                    data._update(int(coins.getCoins()), int(xp.getXP()))
                else:
                    os.system("cls")
                    print("You already have that item!")
            else:
                os.system("cls")
                print("Not enough coins!")
    else:
        print("Unknown Command!")
        os.system("cls")