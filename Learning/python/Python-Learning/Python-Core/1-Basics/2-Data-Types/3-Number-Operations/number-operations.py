# Types

# type()
x = 5
y = 5.7
z = 2 + 5j
print(type(x))
print(type(y))
print(type(z))

# type conversions - str(), float(), complex()
x = "24"
print(type(x))
print(x * 3)
x = int(x)
print(type(x))
print(x * 3)

x = 3.83
print(int(x))
x = 3
print(float(x))
x = "3.89"
print(x, type(x))
print(float(x), type(float(x)))

x = 3  # Real Number
y = 9  # Imaginary Number
print(complex(x, y))

# Math Operators
print(11 + 3)  # Addition
print(11 - 3)  # Subtraction
print(11 * 3)  # Multiplication
print(11 / 3)  # Division or Float Division
print(11 // 3)  # Integer Division or Floor Division
print(11 % 3)  # Modulus or Remainder
print(11**3)  # Exponentiation
print(11 % 3 == 0)  # Check if the remainder is zero

# Shorthand Assignment Operators
x = 10
x += 5  # x = x + 5
print(x)
x -= 5  # x = x - 5
print(x)
x *= 5  # x = x * 5
print(x)
x /= 5  # x = x / 5
print(x)
x //= 5  # x = x // 5
print(x)
x += 8  # x = x + 8
print(x)
x %= 5  # x = x % 5
print(x)
x += 5  # x = x + 5
print(x)
x **= 5  # x = x ** 5
print(x)

# Rounding
import math

# Measuring Distance with abs() - absolute value
print(abs(5 - 35))

# Rounding Numbers
price = 35.95535892
print(round(price))  # Default rounding to the nearest integer
print(round(price, 2))  # Rounding to a specific number of decimal places
print(round(price, 1))  # Rounding to a specific number of decimal places
price = 34.500
print(round(price))  # Bankers rounding to the nearest even number
price = 38.895903
print(
    math.floor(price)
)  # Rounding down to the nearest integer, but first we have to import math module
print(math.ceil(price))  # Rounding up to the nearest integer
print(math.trunc(price))  # Truncating the decimal part of the number

# Random Number Generation
import random

print(random.random())  # Generates a random float between 0 and 1
print(random.randint(1, 12))  # Generates a random integer between 1 and 12

# Validation
x = 7.0
print(x.is_integer())  # Checks if the number is an integer
x = 7.01
print(x.is_integer())  # Checks if the number is an integer

x = 70.34
print(isinstance(x, int))  # Checks if the variable is an integer
print(isinstance(x, float))  # Checks if the variable is a float

# Number Challenge
random_number = random.randint(1, 100)  # Randomly generates a number between 1 and 100
is_even = random_number % 2 == 0  # Checks if the number is even
print(random_number)
print(is_even)
print("Even:", random_number % 2 == 0)  # Checks if the number is even
