def div(number1, number2):
    if number2 == 0:
        raise ZeroDivisionError("Division by zero is not allowed.")
    else:
        return number1 / number2

class Newmath:
    @staticmethod
    def div(numerator, denominator):
        return numerator // denominator

def print_to_screen(message, newline=True):
    if message is not None:
        if newline:
            print(message)
        else:
            print(message, end='')

def main():
    print_to_screen("Newmath (type 'exit' to exit program)")

    while True:
        print_to_screen("Numerator: ", False)
        numerator_input = input()

        if numerator_input == "exit":
            break

        print_to_screen("Denominator: ", False)
        denominator_input = input()

        numerator = int(numerator_input)
        denominator = int(denominator_input)

        result = Newmath.div(numerator, denominator)
        print_to_screen(f"{numerator} / {denominator} = {result}")

if __name__ == "__main__":
    main()
