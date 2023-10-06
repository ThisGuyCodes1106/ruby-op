# Like objects in JS
my_details = {
    "name" => "Stefan",
    "age" => 30,
    "isBlonde" => false,
    "hobbies" => ["Sports", "PlayStation", "Food"],
}


###################### ACCESSIING VALUES ######################
my_details["hobbies"][1]
# If you try to access a key that doesn’t exist in the hash, it will return nil

# Fetch method: raise an error if key not in hash
# my_details.fetch("hoes") # key not found: "hoes" (KeyError)
# this method can return a default value instead of raising an error if the given key is not found.
my_details.fetch("hoes", "none to be found") 


###################### ADDING AND CHANGING DATA ######################
my_details["isSexy"] = true


###################### REMOVING DATA ######################
my_details.delete("isSexy")


###################### USEFUL METHODS ######################
books = {
    "Infinite Jest" => "David Foster Wallace",
    "Into the Wild" => "Jon Krakauer"
  }
  
  books.keys      #=> ["Infinite Jest", "Into the Wild"]
  books.values    #=> ["David Foster Wallace", "Jon Krakauer"]

###################### MERGING TWO HASHES ######################
hash1 = { "a" => 100, "b" => 200 }
hash2 = { "b" => 254, "c" => 300 }
hash1.merge(hash2)      #=> { "a" => 100, "b" => 254, "c" => 300 }


###################### SYMBOLS AND HASH KEYS ######################
# 'Rocket' syntax
american_cars = {
    :chevrolet => "Corvette",
    :ford => "Mustang",
    :dodge => "Ram"
}
# 'Symbols' syntax
japanese_cars = {
    honda: "Accord",
    toyota: "Corolla",
    nissan: "Altima"
}

# Still need to use standard symbol syntax to access a value
american_cars[:ford]    #=> "Mustang"