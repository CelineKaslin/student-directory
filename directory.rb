@students = []

def print_menu
  puts "\nChoose one of the following action by typing the number of it :"
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit"
end

def show_students
  print_header if @students != []
  print_students_list
  print_footer
end

def case_action(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "9"
    exit # this will cause the program to terminate
  else
    puts "I do not know what you meant, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    # do what the user has asked
    case_action(gets.chomp) # user selection directly passed as argument
  end
end

def input_students
  puts "Please enter the students's names :"
  name = gets.tr("\n\r", "")
  while !name.empty? do
    puts "Please enter the student's cohort :"
    cohort = gets.chomp
    puts "To finish, just enter 'stop'"
    if cohort == ""
       cohort = "November"
     end
    #add the student hash to the Array
    @students << {name: name, cohort: cohort.to_sym}
    puts "Now we have #{@students.count} student" if @students.count == 1
    puts "Now we have #{@students.count} students" if @students.count != 1
    #gets an other name from the input_students
    name = gets.chomp
    if name == "stop"
      break
    end
  end
  @students
end

def print_header
  puts "The students of Villains academy"
  puts "--------------"
end

def print_students_list
    cohorts = []
    @students.each {|student| cohorts.push(student[:cohort])}
    cohorts.uniq.each do |cohort|
      puts "Cohort: #{cohort}"
      @students.map do |student|
        puts "#{student[:name].center(15)}" if student[:cohort] == cohort
      end
    end
end

def print_footer
  puts "Overall, we have #{@students.count} great student" if @students.count == 1
  puts "Overall, we have #{@students.count} great students" if @students.count > 1
end

# nothing happen until we call the methods
interactive_menu
