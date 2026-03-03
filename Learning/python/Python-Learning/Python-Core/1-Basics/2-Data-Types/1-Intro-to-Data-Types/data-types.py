# Data Types
a = 10  # int (Whole Number)
b = 3.14  # float (Decimal Number)
c = "Hello"  # str
d = "Hi"  # str
e = "123"  # str
f = True  # bool (Capital T) - Case Sensitive
g = False  # bool (Capital F) - Case Sensitive
h = None  # NoneType (Capital N) - Case Sensitive
i = ""  # str (blank string)
j = " "  # str (empty space)

text = "Hello World"
number = 10

print(text)
print(number)

print(type(text))  # type() built-in function returns the data type of the variable
print(type(number))

print(len(text))  # len() built-in function returns the length of the string

print(text.upper())  # upper() Method of <class str> returns the string in uppercase

print(
    number.bit_length()
)  # bit_length() Method of <class int> returns the number of bits required to represent an integer in binary

# Data Type Challenge
age = 38
height = 1.77
name = "Bijoy Nandi"
is_student = False
job_title = None

print(type(age), type(height), type(name), type(is_student), type(job_title))
print(age, height, name, is_student, job_title)
print(len(name))
