def greeting
  puts "The Bouncer will tell you what a person of a certain age is allowed to do in the United States (US) or the United Kingdom (UK). Please give The Bouncer your region. (US) or (UK) or quit to exit the program."
  print "> "
end

def select_country (input)
  if  input == "US"
    puts "What age do you wish to verify for the United States?"
    print "> "
    us_age(age = gets.chomp.to_i)
  elsif input == "UK"
    puts "What age do you wish to verify for the United Kingdom?"
    print "> "
    uk_age (age=gets.chomp.to_i)
  elsif input == "QUIT"
    puts "Good-bye"
    exit
  else
    puts "Please enter either the US or UK or quit."
    print "> "
    start_loop (input = gets.chomp.upcase)
  end
end

def chaperone_quest (chaperone)
  if chaperone == "Y"
    puts "You may drink alcohol but not participate in any other age-restricted vice."
  elsif chaperone == "N"
    puts "You may not drink alcohol or participate in any other age-restricted vice."
  else
    puts "Please put either (Y)es or (N)o"
    print "> "
    chaperone_quest (chaperone = gets.chomp.upcase)
  end
end

def us_age(age)
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
    puts "Would you like to test another (AGE), change the (COUNTRY), or (QUIT)?"
    response = gets.chomp.upcase
    if response ==  "AGE"
      puts "What age do you wish to test?"
      us_age(age=gets.chomp.to_i)
    elsif response == "COUNTRY"
      puts "Please select (US) or (UK)."
      select_country (input = gets.chomp.upcase)
    elsif response == "QUIT"
      puts "Good-bye."
      exit
    else
      puts "Invalid response."
    end
  end
end

def uk_age(age)
  while true
    case
    when age < 1
      puts "The age given really should be greater than 0. Or an integer."
    when age < 16
      puts "There are no vices in which the government has put an age limit on that you are allowed to partake in."
    when age < 18
      puts "Are your parents chaperoning you? (Y/N)"
      chaperone_quest (chaperone = gets.chomp.upcase)
    when age < 21
      puts "You are now allowed to take part in the vices of smoking, voting, and drinking."
    when age >= 25
      puts "In addition to the previous vices of smoking, voting, and drinking, you now participate in the worst, car rental."
    end
    puts "Would you like to test another (AGE), change the (COUNTRY), or (QUIT)?"
    response = gets.chomp.upcase
    if response ==  "AGE"
      puts "What age do you wish to test?"
      uk_age(age=gets.chomp.to_i)
    elsif response == "COUNTRY"
      puts "Please select (US) or (UK)."
      select_country (input = gets.chomp.upcase)
    elsif response == "QUIT"
      puts "Good-bye."
      exit
    else
      puts "Invalid response."
    end
  end
end

greeting
select_country (input = gets.chomp.upcase)
