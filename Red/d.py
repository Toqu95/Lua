def encrypt(string):
  #in this function we are basically replacing the "1" with "_".
  string = string.replace("1", "_")
  
  #we can also just keep on adding the replace method to expand this.
  
  string = string.replace("2", "_-")
  string = string.replace("3", "_-_")
  string = string.replace("4", "_-_-")
  string = string.replace("5", "_-_-_")
  
  return string

print(encrypt("152"))