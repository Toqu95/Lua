import requests
import Red

def Red_Terminal():
    print("Loaded Encryption!")
    while True:

        def syntax():
            print("Syntax Error!")

        main = input("User >: ")

        if main == ("Encrypt") or main == ("encrypt"):
            choice = input("1: FileEncryption\n2: String Encryption\nUser >: ")
            if choice == "1":
                choice2 = input("Path >: ")
                Red.encryptFile(choice2)
                print("Red >: Done! Check out the new file in current directory.")
            elif choice == "2":
                choice3 = input("String >: ")
                print(Red.encrypt(choice3))
                
        
        elif main == ("Decrypt") or main == ("decrypt"):
            choice = input("1: FileDecryption\n2: String Decryption\nUser >: ")
            if choice == "1":
                choice2 = input("Path >: ")
                Red.decryptFile(choice2)
                print("Red >: Done! Check out the new file in current directory.")
            elif choice == "2":
                choice3 = input("String >: ")
                print(f"Decrypted String >: {Red.decrypt(choice3)}")
        
        elif main == ("Help") or main == ("help"):
            with open("help_EN_DE","r") as f:
                print(f.read())
        
        elif main == ("Exit") or main == ("exit"):
            break

        else:
            syntax()


print("""
 ___   ___  ____    __    ____  _  _ 
/ __) / __)(  _ \  /__\  (  _ \( \/ )
\__ \( (__  )   / /(__)\  )___/ \  / 
(___/ \___)(_)\_)(__)(__)(__)   (__) 

Easy Testing Ground
""")

print("""
1: Encryption
""")
choice = input("User >: ")
if choice == "1":
    Red_Terminal()