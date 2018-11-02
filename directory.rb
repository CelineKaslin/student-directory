def input_students
  puts "Please enter the students's names :"
  puts "To finish, juts hit return twice"
  students = Array.new
  name = gets.chomp
  #while the name is not empt, repeat this code
  while !name.empty? do
    #add the student hash to the Array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #gets an other name from the input_students
    name = gets.chomp
  end
  # return the array of students
  students
end

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
students = input_students
print_header
print_name(students)
print_footer(students)
