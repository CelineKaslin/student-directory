@students = []

def load_students(filename = "student.csv")
  file = File.open("students.csv", "r")
  file.readlines.each do |line|
    name, cohort = line.chomp.split(",")
      add_students(name, cohort)
  end
  file.close
  puts "student list loaded"
end

def try_load_students
  ARGV != nil ? filename = ARGV.first : filename = "student.csv"
  return if filename.nil? # get out of the method if it's not given
  if File.exists?(filename)
    load_students(filename)
    puts "Loaded #{@students.count} from #{filename}"
  else # if it does not exist
    puts "Sorry, #{filename} does not exist.Loading from the default student.csv file"
    load_students
  end
end

def save_students
  # open the file for writting
  file = File.open("students.csv", "w")
  # iterate over the array of save_students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line # write directly into the file
  end
  file.close
  puts "student's info saved in file"
end

def print_menu
  puts "\nChoose one of the following action by typing the number of it :"
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "4. Load the list from students.csv"
  puts "9. Exit"
end

def show_students
  print_header if @students != []
  print_students_list
  print_footer
end

def case_action(selection)
  case selection
  when "1" then input_students
  when "2" then show_students
  when "3" then save_students
  when "4" then load_students
  when "9"
    puts "Bye"
    exit
  else puts "I do not know what you meant, try again"
  end
end

def interactive_menu
  loop do
    print_menu
    case_action(STDIN.gets.chomp) # user selection directly passed as argument
  end
end

def add_students(name, cohort)
  @students << {name: name, cohort: cohort.to_sym}
end

def input_students
  puts "Please enter the students's names :"
  name = STDIN.gets.tr("\n\r", "") # other chomp method
  while !name.empty? do
    puts "Please enter the student's cohort :"
    cohort = STDIN.gets.chomp
    puts "To finish, just enter 'stop'"
    if cohort == ""
       cohort = "November"
    end
    add_students(name, cohort)
    puts "Now we have #{@students.count} student" if @students.count == 1
    puts "Now we have #{@students.count} students" if @students.count != 1
    name = STDIN.gets.chomp
    if name == "stop"
      break
    end
  end
  @students
end

def print_header
  if @students.count > 0
    puts "The students of Villains academy"
    puts "--------------"
  else
    puts "there is no student registered"
  end
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

try_load_students
interactive_menu
