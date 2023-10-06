# Any conditional statement will always have an expression that evaluates to true or false. Based on this answer, the computer will decide whether or not to execute the code that follows.
# The only false values in Ruby are the values nil and false themselves. That’s it! 

###################### CONDITION STATEMENT ######################
# if 1 < 2
#     puts "Hot diggity, 1 is less than 2!"
# end
#=> Hot diggity, 1 is less than 2!

# One line way:
# puts "Hot diggity damn, 1 is less than 2" if 1 < 2

attack_by_land = false
attack_by_sea = false 

if attack_by_land == true
    puts "release the goat"
elsif attack_by_sea == true
    puts "release the shark"
else
    puts "release Kevin the octopus"
end

###################### BOOLEAN LOGIC ######################
5 == 5 #=> true
5 != 7 #=> true
5 > 7 #=> false
7 >= 7 #=> true

#eql? checks both the value type and the actual value it holds
5.eql?(5.0) #=> false; although they are the same value, one is an integer and the other is a float
5.eql?(5)   #=> true

#equal? checks whether both values are the exact same object in memory.
a = 5
b = 5
a.equal?(b) #=> true, because of the way computers store integers in memory.

a = "hello"
b = "hello"
a.equal?(b) #=> false


###################### <=> (spaceship operator) ######################
# -1 if the value on the left is less than the value on the right;
# 0 if the value on the left is equal to the value on the right; and
# 1 if the value on the left is greater than the value on the right.
5 <=> 10    #=> -1
10 <=> 10   #=> 0
10 <=> 5    #=> 1


###################### LOGICAL OPERATORS ######################
# && (and), || (or) and ! (not).
# if 1 < 2 && 5 < 6
#     puts "Party at Kevin's!"
# end
  
# This can also be written as (same for || / or)
if 1 < 2 and 5 < 6
    puts "Party at Kevin's!"
end


###################### CASE OPERATORS ######################
grade = 'A'

did_i_pass = case grade #=> create a variable `did_i_pass` and assign the result of a call to case with the variable grade passed in
  when 'A' then "Hell yeah!"
  when 'D' then "Don't tell your mother."
  else "'YOU SHALL NOT PASS!' -Gandalf"
end

# If you need to do some more complex code manipulation, you can remove the then keyword and instead place the code to be executed on the next line
case grade
when 'A'
  puts "You're a genius"
  future_bank_account_balance = 5_000_000
when 'D'
  puts "Better luck next time"
  can_i_retire_soon = false
else
  puts "'YOU SHALL NOT PASS!' -Gandalf"
  fml = true
end


###################### UNLESS STATEMENTS ######################
# An unless statement works in the opposite way as an if statement: it only processes the code in the block if the expression evaluates to false.
# Process this code UNLESS
age = 17
unless age < 18
  puts "Get a job."
end


###################### TERNARY OPERATOR ######################
# conditional statement ? <execute if true> : <execute if false>
