def input_students

  puts "Please enter the students's names :"
  name = gets.chomp
  puts "Please enter the student's birth place :"
  birth_place = gets.chomp
  puts "please enter the student's age :"
  age = gets.chomp
  puts "Please enter the student's hobby :"
  hobby = gets.chomp
  puts "To finish, juts enter 'stop'"

  students = Array.new
    while !name.empty? do
      #add the student hash to the Array
      students << {name: name,birth_place: birth_place, age: age, hobby: hobby, cohort: :november}
      puts "Now we have #{students.count} students"
      #gets an other name from the input_students
      name = gets.chomp
      if name == "stop"
        break
      end
      birth_place = gets.chomp
      age = gets.chomp
      hobby = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains academy"
  puts "--------------"
end

def print_name(names)
  type_name = true
  while type_name
    names.each_with_index do |student, index|
      index += 1
      puts "#{index} #{student[:name]}, #{student[:age]}, #{student[:hobby]} (#{student[:cohort]} cohort)"
    end
    type_name = false
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
# nothing happen until we call the methods
students = input_students
print_header
print_name(students)
print_footer(students)
