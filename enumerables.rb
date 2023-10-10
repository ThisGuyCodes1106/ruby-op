# Enumerables are a set of convenient built-in methods in Ruby that are included as part of both arrays and hashes.

# Code without enumerable
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']
invited_list = []

for friend in friends do
  if friend != 'Brian'
  invited_list.push(friend)
  end
end

invited_list #=> ["Sharon", "Leo", "Leila", "Arun"]

# select method:
friends.select { |friend| friend != 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]

 # reject method:
 friends.reject { |friend| friend == 'Brian' }


###################### EACH METHOD ######################
# single line
friends.each{ |friend| "Hello, " + friend }

# multi-line
friends.each do |friend|
    "Hello, " + friend
end

# each returns the original array/hash regardless of what happens in the code block:
# puts friends.each{ |friend| "Hello, " + friend } #=> will only output the names of each friend

# .each with hashes:
my_details = {
    name: "Stefan",
    age: 30,
    isBlonde: false,
}

my_details.each { |key, value| "#{key} is #{value}" } #=> name is Stefan ...

my_details.each { |pair| "the pair is #{pair}" } #=> the pair is [:name, "Stefan"] ...


###################### EACH_WITH_INDEX METHOD ######################
fruits = ["apple", "banana", "strawberry", "pineapple"]

fruits.each_with_index { |fruit, index| fruit if index.even? }
#=> apple
#=> strawberry


###################### MAP METHOD ######################
# The #map method transforms each element from an array according to whatever block you pass to it and returns the transformed elements in a new array.
friends.map { |friend| friend.upcase } #=> ["SHARON", "LEO", "LEILA", "BRIAN", "ARUN"]


###################### SELECT METHOD ######################
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

# on arrays:
friends.select { |friend| friend != 'Brian' }
 #=> ["Sharon", "Leo", "Leila", "Arun"]

# on hashes:
responses = { 'Sharon' => 'yes', 'Leo' => 'no', 'Leila' => 'no', 'Arun' => 'yes' }
responses.select { |person, response| response == 'yes'}
#=> {"Sharon"=>"yes", "Arun"=>"yes"}


###################### REDUCE METHOD ######################
# reduces an array or hash down to a single object.
my_numbers = [5, 6, 7, 8]

my_numbers.reduce { |sum, number| sum + number }
#=> 26

# The first block variable in the #reduce enumerable (sum in this example) is known as the accumulator. The result of each iteration is stored in the accumulator and then passed to the next iteration.
# By default, the initial value of the accumulator is the first element in the collection

# to start with different value for initial accumulator:
my_numbers.reduce(1000) { |sum, number| sum + number }
#=> 1026


###################### REDUCE METHOD ######################
votes = ["Trump", "Biden", "Trump"]

results = votes.reduce(Hash.new(0)) do |result, vote|
  result[vote] += 1
  result
end
#=> results: {"Trump"=>2, "Biden"=>1}


###################### BANG METHODS ######################
# Permenantly alter the origianal array/hash
friends = ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

friends.map! { |friend| friend.upcase }
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`

friends
#=> `['SHARON', 'LEO', 'LEILA', 'BRIAN', 'ARUN']`


###################### RETURN VALUES OF ENEMERABLES ######################
# could store new freinds array in local variable, or wrap your enumerable method in a method definition, as shown:
def invited_friends(friends)
  friends.select { |friend| friend != 'Brian' }
end

friends
#=> ['Sharon', 'Leo', 'Leila', 'Brian', 'Arun']

invited_friends(friends)
 #=> ["Sharon", "Leo", "Leila", "Arun"]


###################### PREDICATE ENEMERABLES ######################
# Predicate methods = return true/false

# .include?
numbers = [5, 6, 7, 8]

numbers.include?(6)
#=> true

# .any? - returns true if any element in array/hash match condition in block
numbers.any? { |number| number > 10 }
#=> true

# others .all? .none?