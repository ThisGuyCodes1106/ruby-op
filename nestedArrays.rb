test_scores = [
    [97, 76, 79, 93],
    [79, 84, 76, 79],
    [88, 67, 64, 76],
    [94, 55, 67, 81]
  ]
  
teacher_mailboxes = [
    ["Adams", "Baker", "Clark", "Davis"],
    ["Jones", "Lewis", "Lopez", "Moore"],
    ["Perez", "Scott", "Smith", "Young"]
]


###################### CREATE NESTED ARRAY ######################
immutable = Array.new(3) { Array.new(2) }
#=> [[nil, nil], [nil, nil], [nil, nil]]
immutable[0][0] = 1000
#=> 1000
immutable
#=> [[1000, nil], [nil, nil], [nil, nil]]

# have to pass in { Array.new(2) } with {} otherwise: #=> [[1000, nil], [1000, nil], [1000, nil]]


###################### ADDING / REMOVING ELEMENTS ######################
test_scores.push([100, 99, 98, 97])
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
test_scores[4].push(100)
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97, 100]]
test_scores.pop()
#=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]


###################### ITIRATING OVER NESTED ARRAY ######################
teacher_mailboxes.each_with_index do |row, row_index|
    "Row:#{row_index} = #{row}"
end
  #=> Row:0 = ["Adams", "Baker", "Clark", "Davis"]
  #=> Row:1 = ["Jones", "Lewis", "Lopez", "Moore"]
  #=> Row:2 = ["Perez", "Scott", "Smith", "Young"]
  #=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]

teacher_mailboxes.each_with_index do |row, row_index|
    row.each_with_index do |teacher, column_index|
      "Row:#{row_index} Column:#{column_index} = #{teacher}"
    end
end
  #=> Row:0 Column:0 = Adams
  #=> Row:0 Column:1 = Baker
  #=> Row:0 Column:2 = Clark
  #=> Row:0 Column:3 = Davis
  #=> Row:1 Column:0 = Jones
  #=> Row:1 Column:1 = Lewis
  #=> Row:1 Column:2 = Lopez
  #=> Row:1 Column:3 = Moore
  #=> Row:2 Column:0 = Perez
  #=> Row:2 Column:1 = Scott
  #=> Row:2 Column:2 = Smith
  #=> Row:2 Column:3 = Young

# itiration example: to find out if any student scored higher than 80 on all tests
test_scores.any? do |scores|
    scores.all? { |score| score > 80 }
end
#=> false


###################### NESTED HASHES ######################
vehicles = {
    alice: {year: 2019, make: "Toyota", model: "Corolla"},
    blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
    caleb: {year: 2020, make: "Honda", model: "Accord"}
}

# Accessing data: hash[:x][:y]
vehicles[:caleb][:make] #=> Honda

# Adding data:
vehicles[:dave] = {year: 2021, make: "Ford", model: "Escape"}

# Adding variable to existing hash: 
vehicles[:dave][:color] = "red"

# Removing variable:
vehicles[:dave].delete(:color)

# Deleting nested hash:
vehicles.delete(:blake)


###################### METHODS ######################
# Example: want to know who owns vehicles that are from 2020 or newer
vehicles.select { |name, data| data[:year] >= 2020 }
#=> {:caleb=>{:year=>2020, :make=>"Honda", :model=>"Accord"}, :dave=>{:year=>2021, :make=>"Ford", :model=>"Escape"}}

# if we only want the name of the owner: 
vehicles.collect { |name, data| name if data[:year] >= 2020 }
#=> [nil, :caleb, :dave]
# collect: similar to map, collects the value of each itiration, so when statement is false: will return nil value

# Solution:
vehicles.collect { |name, data| name if data[:year] >= 2020 }.compact
#=> [:caleb, :dave]

# filter_map method:
p vehicles.filter_map { |name, data| name if data[:year] >= 2020 }
#=> [:caleb, :dave]