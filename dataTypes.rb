###################### NUMBERS ######################

# Addition
1 + 1   #=> 2

# Subtraction
2 - 1   #=> 1

# Multiplication
2 * 2   #=> 4

# Division
10 / 5  #=> 2

# Exponent
2 ** 2  #=> 4
3 ** 4  #=> 81

# Modulus (find the remainder of division)
8 % 2   #=> 0  (8 / 2 = 4; no remainder)
10 % 4  #=> 2  (10 / 4 = 2 with a remainder of 2)


###################### INTEGERS AND FLOATS ######################

17 / 5    #=> 3, not 3.4
17 / 5.0  #=> 3.4

# Converting number types
# To convert an integer to a float:
13.to_f   #=> 13.0

# To convert a float to an integer:
# no rounding, decimal places simply cut off
13.0.to_i #=> 13
13.9.to_i #=> 13

# Useful methods
6.even? #=> true
6.odd? #=> false


###################### STRINGS ######################
# String interpolation and escape charecters only work inside double quotation marks
# With the plus operator:
"Welcome " + "to " + "Odin!"    #=> "Welcome to Odin!"

# With the shovel operator:
"Welcome " << "to " << "Odin!"  #=> "Welcome to Odin!"

# With the concat method:
"Welcome ".concat("to ").concat("Odin!")  #=> "Welcome to Odin!"

# Substrings
"hello"[0]      #=> "h"

"hello"[0..1]   #=> "he"

"hello"[0, 4]   #=> "hell"

"hello"[-1]     #=> "o"

# Escape charecters
# \\  #=> Need a backslash in your string?
# \b  #=> Backspace
# \r  #=> Carriage return, for those of you that love typewriters
# \n  #=> Newline. You'll likely use this one the most.
# \s  #=> Space
# \t  #=> Tab
# \"  #=> Double quotation mark
# \'  #=> Single quotation mark


###################### INTERPOLATION ######################
name = "Stefan"

"Hello, #{name}" #=> "Hello, Stefan"


###################### COMMON STRING METHODS ######################
"hello".capitalize #=> "Hello"
"hello".include?("lo")  #=> true
"hello".include?("z")   #=> false
"hello".upcase  #=> "HELLO"
"hello world".split  #=> ["hello", "world"]
"hello".split("")    #=> ["h", "e", "l", "l", "o"]
" hello, world   ".strip  #=> "hello, world"
# others: .length .reverse

"he77o".sub("7", "l")           #=> "hel7o"
"he77o".gsub("7", "l")          #=> "hello"
"hello".insert(-1, " dude")     #=> "hello dude"
"hello world".delete("l")       #=> "heo word"
"!".prepend("hello, ", "world") #=> "hello, world!"


###################### CONVERTING TO STRING ######################
5.to_s        #=> "5"
nil.to_s      #=> ""
:symbol.to_s  #=> "symbol"


###################### SYMBOLS ######################
# Creating a symbol
:my_symbol

# Symbols stored in memory only once
"string" == "string"  #=> true
"string".object_id == "string".object_id  #=> false
:symbol.object_id == :symbol.object_id    #=> true

