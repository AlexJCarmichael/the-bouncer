#The bouncer will verify the users number input and let the user know what age restrictions they have.
def start_loop (input)
  if  input == "quit"
    puts "Good-bye"
    exit
  else
    check_age(input.to_i)
  end
end

def check_age(age)
#age.to_i
#puts "The class is #{age.class}"
  while true
    case
    when age < 1
      puts "The age given really should be greater than 0. Or an integer."
    when age < 18
      puts "There are no vices in which the government has put an age limit on that you are allowed to partake in."
    when age < 21
      puts "You are now allowed to take part in the vices of smoking and voting."
    when age < 25
      puts "In addition the previous vices of smoking and voting, you may now include the legal consumption of alcohol."
    when age >= 25
      puts "In addition to the previous vices of smoking, voting, and drinking, you now participate in the worst, car rental."
    end
    print "> "
    start_loop (input = gets.chomp)
  end
end

puts "The Bouncer will tell you what a person of a certain age is allowed to do. Please give The Bouncer your age."
print "> "

start_loop (input = gets.chomp)
