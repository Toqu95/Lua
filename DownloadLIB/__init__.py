import requests

class Pastebin:
    def __init__(self, url, output):
        self.url = url
        self.output = output
    
    def download(self):
        if self.url.__contains__("pastebin.com"):
            r = requests.get(self.url)
            with open(self.output, 'w') as f:
                f.write(r.text)
            print("if you get the html code then try use the raw link, example: https://pastebin.com/raw/example")
        else:
            print("Wrong site url entered!")
    
    def getText(self):
        if self.url.__contains__("pastebin.com"):
            r = requests.get(self.url)
            print("if you get the html code then try use the raw link, example: https://pastebin.com/raw/example")
            return r.text
        else:
            print("Wrong site url entered!")

class Hastebin:
    def __init__(self, url, output):
        self.url = url
        self.output = output

    def download(self):
        if self.url.__contains__("hastebin.com"):
            r = requests.get(self.url)
            with open(self.output, 'w') as f:
                f.write(r.text)
            print("if you get the html code then try use the raw link, example: https://hastebin.com/raw/example")
        else:
            print("Wrong site url entered!")
    
    def getText(self):
        if self.url.__contains__("hastebin.com"):
            r = requests.get(self.url)
            print("if you get the html code then try use the raw link, example: https://hastebin.com/raw/example")
            return r.text
        else:
            print("Wrong site url entered!")

class other:
    def __init__(self, url, output):
        self.url = url
        self.output = output

    def download(self):
        r = requests.get(self.url)
        with open(self.output, 'w') as f:
            f.write(r.text)

    def getText(self):
        r = requests.get(self.url)
        return r.text