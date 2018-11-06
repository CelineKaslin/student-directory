def input_students
  puts "Please enter the students's names :"
  name = gets.chomp
  students = Array.new
    while !name.empty? do
      puts "Please enter the student's cohort :"
      cohort = gets.chomp
      puts "To finish, juts enter 'stop'"
      if cohort == ""
         cohort = "November"
       end
      #add the student hash to the Array
      students << {name: name, cohort: cohort.to_sym}
      puts "Now we have #{students.count} students"
      #gets an other name from the input_students
      name = gets.chomp
      if name == "stop"
        break
      end
  end
  students
end

def print_header
  puts "The students of Villains academy"
  puts "--------------"
end

def print_name(students)
    cohorts = []
    students.each {|student| cohorts.push(student[:cohort])}
    cohorts.uniq.each do |cohort|
      puts "Cohort: #{cohort}"
      students.map do |student|
        puts "#{student[:name].center(15)}" if student[:cohort] == cohort
      end
    end
end

def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end
# nothing happen until we call the methods
students = input_students
print_header
print_name(students)
print_footer(students)
