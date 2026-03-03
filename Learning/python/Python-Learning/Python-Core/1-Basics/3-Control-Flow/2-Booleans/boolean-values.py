print(True)
print(False)
print(not True)
print(not False)
print(True and False)
print(True or False)
print(True and True)
print(False and False)
print(True or True)
print(False or False)
print(True and True or False)
print(False and True or False)
print(True or True or True)
print(False or True or True)
print(True or False or True)
print(False or False or True)
print(True or False or False)
print(False or False or False)
print(True and True and True and False)
print(False and True and True and False)
print(True and True and False and False)
print(False and True and False and False)
print(True and False and True and False)
print(False and False and True and False)
print(True and False and False and True)
print(False and False and False and True)
print(True and False and False and False)
print(False and False and False and False)
print(True and True and True and True)

print(type(True))
print(type(False))

# bool() function returns True if the argument is truthy, otherwise False
print(bool(10))  # This a truthy value
print(bool(0))  # 0 is considered False in Python
print(bool("Hello"))
print(bool(""))  # Empty string is considered False in Python
print(bool(None))  # None is considered False in Python
print(bool())  # No arguments passed to bool() returns False
print(bool([]))  # Empty list is considered False in Python
print(bool({}))  # Empty dictionary is considered False in Python
print(bool(set()))  # Empty set is considered False in Python
print(bool(0.0))  # 0.0 is considered False in Python
print(bool(-1))  # -1 is considered True in Python
print(bool("0"))  # "0" is considered True in Python
print(bool("False"))  # "False" is considered True in Python
print(bool("True"))  # "True" is considered True in Python
print(bool(" "))  # " " is considered True in Python
print(bool("0.0"))  # "0.0" is considered True in Python
print(bool("1"))  # "1" is considered True in Python

# any() function returns True if any of the arguments is truthy, otherwise False
print(
    any([True, False, True])
)  # This returns True because at least one element is truthy
print(any([False, False, False]))  # This returns False because all elements are False
print(any([]))  # This returns False because the list is empty
print(any([0, 0, 0]))  # This returns False because all elements are 0
print(any([0.0, 0.0, 0.0]))  # This returns False because all elements are 0.0
print(any([None, None, None]))  # This returns False because all elements are None

# all() function returns True if all the arguments are truthy, otherwise False
print(all([True, True, True]))  # This returns True because all elements are truthy
print(
    all([True, False, True])
)  # This returns False because at least one element is False
print(all([]))  # This returns True because the list is empty
print(all([0, 0, 0]))  # This returns False because all elements are 0
print(all([0.0, 0.0, 0.0]))  # This returns False because all elements are 0.0
print(all([None, None, None]))  # This returns False because all elements are None
print(all([1, 1, 1]))  # This returns True because all elements are 1

email = "bijoynandi31@gmail.com"
phone = "0782-333-8382"
username = ""
print(
    any([email, phone, username])
)  # This returns True because at least one element is truthy
print(
    all([email, phone, username])
)  # This returns False because all elements are empty strings

email = "bijoynandi31@gmail.com"
phone = "9876543210"
username = "bijoynandi"
print(
    any([email, phone, username])
)  # This returns True because at least one element is truthy
print(
    all([email, phone, username])
)  # This returns True because all elements are non-empty strings

email = ""
phone = ""
username = ""
print(
    any([email, phone, username])
)  # This returns False because all elements are empty strings
print(
    all([email, phone, username])
)  # This returns False because all elements are empty strings

# isinstance() checks if an object is an instance of a class like isinstance(x, int) checks if x is an integer
print(isinstance(10, int))  # This returns True because 10 is an integer
print(isinstance(10.5, int))  # This returns False because 10.5 is a float
print(isinstance("Hello", str))  # This returns True because "Hello" is a string
print(isinstance("Hello", int))  # This returns False because "Hello" is not an integer
print(isinstance(True, bool))  # This returns True because True is a boolean
print(isinstance(False, bool))  # This returns True because False is a boolean
print(isinstance([], list))  # This returns True because [] is a list
print(isinstance({}, dict))  # This returns True because {} is a dictionary
print(isinstance(set(), set))  # This returns True because set() is a set

# endswith() method checks if a string ends with a specified suffix
print(
    "Hello World".endswith("World")
)  # This returns True because "World" is the suffix
print("Hello World".endswith("d"))  # This returns True because "d" is the suffix

# startswith() method checks if a string starts with a specified prefix
print(
    "Hello World".startswith("Hello")
)  # This returns True because "Hello" is the prefix
print("Hello World".startswith("W"))  # This returns False because "W" is not the prefix
print("Hello World".startswith("H"))  # This returns True because "H" is the prefix
print("Hello World".startswith("h"))  # This returns False because "h" is not the prefix

# isalpha() method checks if all characters in a string are alphabetic
print("Hello World".isalpha())  # This returns False because " " is a space
print("Hello123".isalpha())  # This returns False because "123" is a number
print("Hello".isalpha())  # This returns True because "Hello" is alphabetic
print("123".isalpha())  # This returns False because "123" is a number

# isalnum() method checks if all characters in a string are alphanumeric (alphabetic or numeric)
print(
    "Hello World".isalnum()
)  # This returns True because "Hello World" is alphanumeric
print("Hello123".isalnum())  # This returns True because "Hello123" is alphanumeric
print("123".isalnum())  # This returns True because "123" is alphanumeric
