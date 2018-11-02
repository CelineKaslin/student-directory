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

# then print them
puts "The students of Villains academy"
puts "--------------"
students.each {|student| puts student}

# finally, we print the total number of students
puts "Overall, we have #{students.count} great students"
