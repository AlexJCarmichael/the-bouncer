#The bouncer will verify the users number input and let the user know what age restrictions they have.

puts "The Bouncer will tell you what a person of a certain age is allowed to do. Please give The Bouncer your age."
print "> "
age = gets.chomp.to_i

case
when age < 1
  puts "The age given really should be greater than 0."
when age < 18
  puts "There are no vices in which the government has put an age limit on that you are allowed to partake in."
when age < 21
  puts "You are now allowed to take part in the vices of smoking and voting."
when age < 25
  puts "In addition the previous vices you may now include the legal consumption of alcohol."
when age >= 25
  puts "In addition to the previous vices you now participate in the worst, car rental."
end
