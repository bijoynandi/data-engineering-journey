# Types

# type()
name = "Bijoy"
print(type(name))
age = 39
print(type(age))

# str()
print("Your age is: " + str(age))  #  type casting
age = age + 1
print(type(age))
age = str(age)  #  type casting
print(type(age))
age = "Bijoy will be " + age
print(age)

#  Math (Measuring String Values)

#  len()
password = "1234&abcd#"
print(len(password))

if len(password) < 8:
    print("Password is too short!")

#  count()
text = """
Python is a great programming language.
I am learning Python.
Python is fun.
Python is easy to learn.
Python is powerful.
Many people love python.
"""
print(
    text.count("Python")
)  #  count the number of occurrences of a substring in a string (case-sensitive)
print(
    text.count("python")
)  #  count the number of occurrences of a substring in a string (case-sensitive)

#  Data Transformations

#  replace()
price = "1234,56"
print(price.replace(",", "."))
date = "2026/02/05"
print(date.replace("/", "-"))
phone = "123-456-7890"
print(phone.replace("-", "/"))
print(phone.replace("-", ""))
price = "$1,299.99"
print(price.replace("$", "").replace(",", ""))  #  replace multiple characters in
#  a string (Chained method - executed from left to right)

#  String Challenge
phone = "+49 (176) 123-4567"
print(
    phone.replace("+", "00")
    .replace(" ", "")
    .replace("(", "")
    .replace(")", "")
    .replace("-", "")
)

#  joining strings

#  + operator
first_name = "Bijoy"
last_name = "Nandi"
full_name = first_name + " " + last_name
print(full_name)

folder = "/home/bijoy/Documents/Data-Engineering/Learning/python/Python-Learning/"
file = "report.csv"
full_file_path = folder + "/" + file
print(full_file_path)

#  f-string
name = "Bijoy"
age = 39
is_student = False

print(
    "My name is "
    + name
    + ", I am "
    + str(age)
    + " years old, and my student status is "
    + str(is_student)
    + "."
)  #  concatenation with concatenation operator (+)

print(
    f"My name is {name}, I am {age} years old, and my student status is {is_student}."
)  #  f-string with formatted-string literal (f"{variable}")

print(f"2 + 3 = {2 + 3}")  #  evaluate expressions within f-strings
print(f"{{This is me}}")  #  escape curly braces in f-strings with double curly braces

#  split()
name = "Bijoy Nandi-39-Data Analyst-India"
print(name.split("-"))  #  split a string into a list of substrings based on a delimiter
stamp = "2025-06-04 12:30:00"
print(stamp.split(" "))
stamp = "2025-06-04"
print(stamp.split("-"))
csv_file = "1234,Bijoy Nandi, 39, Data Analyst, India, 1988-01-09,M, bijoy@gmail.com, 123-456-7890"
print(csv_file.split(","))

#  Repetition operator (*)
print("*" * 10)
print("ha" * 3)
print("=" * 30)
print("logs")
print("=" * 30)

#  Data Extraction

#  Indexing
text = "Python"

#  Extract the first character
print(text[0])
print(
    text[-6]
)  #  [] is the index operator (0 is the index of the first character of a positive index) (-1 is the index of the last character of a negative index)

#  Extract the last character
print(text[5])
print(text[-1])

#  Extract the 'h' character
print(text[3])
print(text[-3])

#  Slicing
date = "2025-06-07"

#  Extract the year
print(
    date[0:4]
)  #  [start:end] (start is inclusive, end is exclusive) [0:4] means 0, 1, 2, 3 (4 is not included) [start:end:step] (step is optional) [0:4:1] means 0, 1, 2, 3 (4 is not included) 1 is the default step and can be omitted and the default step 1 includes all characters between start and end not stepping any characters
print(
    date[:4]
)  #  Open-ended slicing. If you leave out the start index, Python assumes you want to start at the beginning of the string.
print(date[-10:-6])

#  Extract the month
print(date[5:7])

# Extract the day
print(date[8:])
print(
    date[-2:]
)  #  Use negative indexing to extract part from the right side (end) of the string and positive indexing to extract part from the left side (start) of the string.

#  Data Cleaning

#  Whitespaces Cleanup (lstrip(), rstrip(), strip())
text = "  Engineering"
print(text.lstrip())  #  lstrip() removes leading whitespaces
text = "Engineering  "
print(text.rstrip())  #  rstrip() removes trailing whitespaces
text = "  Engineering  ".lstrip().rstrip()
print(text)
text = "  Engineering  "
print(text.lstrip().rstrip())
print(text.strip())  #  strip() removes leading and trailing whitespaces

# Remove Special Characters
text = "###Python###"
print(text.strip("#"))  #  strip() removes leading and trailing characters
text = "   #####Python#### "
print(text.strip().strip("#"))  #  strip() removes leading and trailing characters

#  Data Integrity Check

text = "  Data Engineering   "
print("User data length: ", len(text))
print("Clean data length: ", len(text.strip()))

num_of_spaces = len(text) - len(text.strip())
is_data_clean = len(text) == len(text.strip())
print("Number of spaces: ", num_of_spaces)
print("Is the data clean: ", is_data_clean)

#  Case Conversions (lower(), upper(), title())
text = "python PROGRAMMING"
print(text.lower())  #   lower() converts all characters to lowercase
print(text.upper())  #  upper() converts all characters to uppercase
print(
    text.title()
)  #  title() converts the first character of each word to uppercase and the rest to lowercase

#  Case Conversion Use Case
search = "Email  ".lower().strip()
data = " emAil".lower().strip()
print(search == data)  #  Case Sensitive Comparison

#  Advanced String Challenge

string = "968-Maria, ( D@t@ Engineer ) ;; 27y  "  #  Clean the string (name: maria | role: data engineer | age: 27)
print(
    string.strip()
    .lower()
    .replace("968-", "name: ")
    .replace(",", "")
    .replace("(", "| role:")
    .replace("@", "a")
    .replace(")", "|")
    .replace(";;", "age:")
    .replace("y", "")
)

#  Searching (startswith(), endswith(), in, find())

phone = "+49-176-49291"
print(
    phone.startswith("+49")
)  #  startswith() checks if a string starts with a specified substring

email = "bijoy@gmail.com"
print(
    email.endswith("gmail.com")
)  #  endswith() checks if a string ends with a specified substring

file = "data_backup.csv"
print(
    file.endswith(".csv")
)  #  endswith() checks if a string ends with a specified substring

email = "bijoy@mail.com"
print("@" in email)  #  in operator checks if a substring is present in a string

url = "https://api.github.com/users/bijoynandi"
print("api" in url)
print("github" in url)

phone1 = "+48-176-49290"
phone2 = "48-176-52000"
phone3 = "00048-294-88960"
print(phone1[4:])
print(phone2[3:])

print(
    phone1.find("-")
)  #  find() finds the index of the first occurrence of a substring in a string
print(
    phone1[phone1.find("-") + 1 :]
)  #  find() is great when combined with other methods (like slicing to extract a substring from a string) to add dynamics.
print(phone2[phone2.find("-") + 1 :])
print(phone3[phone3.find("-") + 1 :])

#  Validation (isalpha(), isnumeric())

country = "India"
print(
    country.isalpha()
)  #  isalpha() checks if a string contains only alphabetic characters

phone = "09876543210"
print(
    phone.isnumeric()
)  #  isnumeric() checks if a string contains only numeric characters

#  id() function returns the memory address of an object
# print(id(str))

#  dir() function returns a list of all the attributes and methods of an object
# print(dir(str))

#  help() function returns the documentation of an object
# print(help(str))
# print(help(str.split))
# print(help(dict))


# Python Logical Operators (Python Challenge)
user_name = "Bijoy"
age = 39
print(user_name != "" and age >= 18)

password = "Bijoy@12345"
print(len(password) >= 8 and password.find(" ") == -1)
# or
print(len(password) >= 8 and " " not in password)

email = "bijoynandi@proton.me"
print(email != "" and "@" in email and email.endswith(".com"))
# or
print(email != "" and email.find("@") != -1 and email.endswith(".com"))

user_name = "Bijoy123"
print(isinstance(user_name, str) and user_name is not None and len(user_name) > 5)

user = "admin"
is_banned = False
verified_email = True
print((user == "admin" or user == "moderator") and not is_banned or verified_email)
