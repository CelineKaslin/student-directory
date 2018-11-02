# let's create an array with the students name
students = [
  {name: "Dr. Hannibal Lecter", cohort: :november},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex Delarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joeffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}]

def print_header
  puts "The students of Villains academy"
  puts "--------------"
end
def print_name(names)
names.each {|student| puts "#{student[:name]} (#{student[:cohort]} cohort)"}
end
def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
# nothing happen until we call the methods
print_header
print_name(students)
print_footer(students)
