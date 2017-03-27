#A method that takes user input and places it as a hash into a new array
def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  #create and empty array
  students = []
  #get the first name
  name = gets.chomp
  #while the name is not empty, repeat this code
  while !name.empty? do
    #add the student has to the array
    students << {name: name, cohort: :november}
    puts "Now we have #{students.count} students"
    #get another name from the user
    name = gets.chomp
  end
  #return the array of students
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "------------"
end
#students now print out with a number starting from 1
#each.with_index was used sto start at 1 as each_with_index takes no arguments and starts at 0
def print(students)
  students.each.with_index(1) do |student, index|
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(names)
  puts "Overall, we have #{names.count} great students"
end
#nothing happens in the program until these methods are called
students = input_students
print_header
print(students)
print_footer(students)
