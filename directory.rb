# let's create an array with the students name
students = [
  "Dr. Hannibal Lecter",
  "Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex Delarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joeffrey Baratheon",
  "Norman Bates"]

def print_header
  puts "The students of Villains academy"
  puts "--------------"
end
def print_name(names)
names.each {|name| puts name}
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
# nothing happen until we call the methods
print_header
print_name(students)
print_footer(students)
