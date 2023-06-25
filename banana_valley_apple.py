# Copyright 2017 Creative Commons
#
# Licensed under the Creative Commons Attribution 4.0 International License (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://creativecommons.org/licenses/by/4.0/
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# --------------------------

# Code file

# Imports
import os
import sys
import time

# Constants
MAX_VALUE = 10

# Variables
counter = 0

# Main program
while counter < MAX_VALUE:
    # Print current value
    print('Current value:', counter)

    # Increment counter
    counter += 1

    # Wait 1 second
    time.sleep(1)

# Print out the end message
print('Done counting up to', MAX_VALUE)

# =============================

# Create a function that returns the arctan in radians
def arctan(x):
    """
    Computes arctan for the given x value.

    Args:
        x (float): The x value for arctan.

    Returns:
        float: The arctan in radians.
    """
    # Compute the arctan
    res = 0
    n = 1 # denominator
    sign = 1 # sign of the n-th term
    k = 0 # index
    while True:
        curr_term = sign * x**(2*k + 1) / n
        if abs(curr_term) < 10**-6:
            break
        res += curr_term
        sign *= -1
        n += 2 * k + 2
        k += 1

    # Return the result
    return res

# Create a function that prints out a 2D array
def print_2d_array(arr):
    """
    Prints out a 2D array in a nice format.

    Args:
        arr (list of lists): The array to print.
    """
    for row in arr:
        print(row)

# Create a function that uses a for loop to modify each element in a list
def modify_list(lst):
    """
    Modifies each element in a given list by multiplying it by 2.

    Args:
        lst (list): The list to modify.

    Returns:
        list: The modified list.
    """
    # Loop over elements in the list
    for i in range(len(lst)):
        # Modify each element
        lst[i] *= 2

    # Return the modified list
    return lst

# Create a function to find the index of an element in a list
def find_index(lst, elem):
    """
    Finds the index of the given element in the list.

    Args:
        lst (list): The list to search in.
        elem (any type): The element to find.

    Returns:
        int: The index of the given element in the list.
    """
    # Loop over elements in the list
    for i in range(len(lst)):
        # Check if we found the element
        if lst[i] == elem:
            return i

    # If the element is not in the list
    return -1

# Create a function to calculate the dot product of two vectors
def dot_product(vec1, vec2):
    """
    Computes the dot product of two given vectors.

    Args:
        vec1 (list): The first vector.
        vec2 (list): The second vector.

    Returns:
        float: The dot product of the given vectors.
    """
    # Initialize result variable
    result = 0

    # Make sure the vectors have the same length
    if len(vec1) != len(vec2):
        return None

    # Calculate the dot product
    for i in range(len(vec1)):
        result += vec1[i] * vec2[i]

    # Return the result
    return result

# Create a function to check if a number is prime
def is_prime(num):
    """
    Checks if the given number is prime.

    Args:
        num (int): The number to check.

    Returns:
        bool: True if the number is prime, False otherwise.
    """
    # Check if num is less than 2
    if num < 2:
        return False

    # Check if num is divisible by any number between 2 and sqrt(num)
    for i in range(2, int(num**0.5) + 1):
        if num % i == 0:
            return False

    # Otherwise the number is prime
    return True

# Create a function to calculate the factorial of a number
def factorial(num):
    """
    Calculates the factorial of a given number.

    Args:
        num (int): The number to calculate the factorial of.

    Returns:
        int: The factorial of the given number.
    """
    result = 1
    for i in range(1, num + 1):
        result *= i
    return result

# Create a function to calculate the sum of the first n numbers
def sum_numbers(n):
    """
    Calculates the sum of the first n numbers.

    Args:
        n (int): The number of numbers to sum.

    Returns:
        int: The sum of the first n numbers.
    """
    result = 0
    for i in range(1, n + 1):
        result += i
    return result

# Create a function to calculate the nth Fibonacci number
def nth_fibonacci(n):
    """
    Calculates the nth Fibonacci number.

    Args:
        n (int): The number of the Fibonacci number to calculate.

    Returns:
        int: The nth Fibonacci number.
    """
    if n == 0:
        return 0
    elif n == 1:
        return 1
    else:
        return nth_fibonacci(n-1) + nth_fibonacci(n-2)

# Create a function to generate the first n Fibonacci numbers
def generate_fibonacci(n):
    """
    Generates the first n Fibonacci numbers.

    Args:
        n (int): The number of Fibonacci numbers to generate.

    Returns:
        list: A list containing the first n Fibonacci numbers.
    """
    result = []
    for i in range(n):
        result.append(nth_fibonacci(i))
    return result