print(10 == 10)  # This returns True because 10 is equal to 10
print(10 != 10)  # This returns False because 10 is not equal to 10
print(7 > 3)
print(7 < 3)
print(7 >= 3)
print(7 <= 10)
print(7 >= 7)
print(7 <= 7)

# Comparing Strings
print(
    "a" < "b"
)  # This returns True because "a" is less than "b" because "a" comes before "b" in the alphabet so it is considered smaller than "b"
print("a" == "b")  # This returns False because "a" is not equal to "b"
print(
    "a" == "A"
)  # This returns False because "a" is not equal to "A" because they are different characters because "a" is lowercase and "A" is uppercase
print("a" == "a")  # This returns True because "a" is equal to "a"

# Chained Comparison (Comparison with multiple conditions, and it evaluates from left to right checking each condition one by one)
print(
    10 > 5 > 3
)  # This returns True because 10 is greater than 5 and 5 is greater than 3
print(
    10 > 5 < 3
)  # This returns False because 10 is greater than 5 but 5 is not less than 3 and to be True all conditions must be true
print(
    10 < 5 < 3
)  # This returns False because 10 is not less than 5 and 5 is not less than 3 and to be True all conditions must be true
print(
    10 < 5 > 3
)  # This returns False because 10 is not less than 5 but 5 is greater than 3

# Is age between 18 and 30?
age = 20
print(
    18 <= age <= 30
)  # This returns True because 20 is greater than or equal to 18 and less than or equal to 30
age = 37
print(
    18 <= age <= 30
)  # This returns False because 37 is not greater than or equal to 18 and less than or equal to 30
