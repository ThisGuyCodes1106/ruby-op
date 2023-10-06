###################### CREATING A METHOD ######################
def my_name
    "Stefan"
end
# calling this method will just return the string "Stefan"


###################### PARAMETERS AND ARGUEMENTS ######################
def greet(name)
    "Hello, " + name + "!"
end

greet("Stefan") #=> Hello, Stefan!


###################### DEFAULT PARAMETERS ######################
def greet(name = "stranger")
    "Hello, " + name + "!"
end

greet("Jane") #=> Hello, Jane!
greet() #=> Hello, stranger!


###################### WHAT METHODS RETURN ######################
# Ruby has implicit returns, return keyword unnecessary
def my_name
    return "Stefan"
end


# Explicit return still useful
def even_odd(number)
    unless number.is_a? Numeric
      return "A number was not entered."
    end
  
    if number % 2 == 0
      "That is an even number."
    else
      "That is an odd number."
    end
  end
  
  even_odd(20) #=>  That is an even number.
  even_odd("Ruby") #=>  A number was not entered.


###################### PREDICATE METHODS ######################
# Built in Ruby methods that return boolean true/false
5.even?  #=> false
6.even?  #=> true
17.odd?  #=> true

12.between?(10, 15)  #=> true


###################### BANG METHODS ######################
whisper = "HELLO EVERYBODY"

whisper.downcase #=> "hello everybody"
puts whisper #=> "HELLO EVERYBODY"
# .downcase method does not alter the original value of the object

# Bang method, add ! to end
whisper.downcase! # same as doing: whisper = whisper.downcase