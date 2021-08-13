log_file = open("um-server-01.txt")
# Opens the file named "um-server-01.txt" and assigns it to log_file


def sales_reports(log_file):
# Creates a function called sales_reports with a paramater of log_file
    for line in log_file:
# A for loops that goes over the lines in log_file
        line = line.rstrip()
# Makes the line equal to the line, but removes the whitespace at the end
        day = line[0:3]
# Sets the day as equal to the first three characters of the line
        if day == "Mon":
# Checks to see if the day is equal to tuesday and if so, then run the code bellow
            print(line)
# Prints the line in the console



# sales_reports(log_file)
# Calls the sales_report function


# Extra Credit

def ten_melons (log_file):
        for line in log_file:
                line = line.rstrip('\n').split(' ')
                melons = int(line[2])
                if melons > 5:
                        print(line)

ten_melons(log_file)
