for x in range(1, 101):
    # Easiest solution
    # if (x % 3 == 0) and (x % 5 == 0):
    #     print("FizzBuzz")
    # elif x % 3 == 0:
    #     print("Fizz")
    # elif x % 5 == 0:
    #     print("Buzz")
    # else:
    #     print(x)

    test1 = x % 3
    test2 = x % 5
    fizz = "Fizz"
    buzz = "Buzz"

    if test1 == 0:
        output = fizz
    else:
        output = x

    if (test2 == 0) and (isinstance(output, str)):
        output += buzz
    elif (test2 == 0) and (isinstance(output, int)):
        output = buzz

    print(output)
