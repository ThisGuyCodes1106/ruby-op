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
  
  puts even_odd(20) #=>  That is an even number.
  puts even_odd("Ruby") #=>  A number was not entered.