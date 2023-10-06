###################### LOOP ######################
#t’s an infinite loop that will keep going unless you specifically request for it to stop, using the break command. Most commonly, break is used with a condition

# i = 0
# loop do
#   puts "i is #{i}"
#   i += 1
#   break if i == 10
# end


###################### WHILE LOOP ######################
# i = 0
# while i < 10 do
#  puts "i is #{i}"
#  i += 1
# end


###################### UNTIL LOOP ######################
# i = 0
# until i >= 10 do
#  puts "i is #{i}"
#  i += 1
# end


###################### FOR LOOP ######################
# Ranges:
(1..5)      # inclusive range: 1, 2, 3, 4, 5
(1...5)     # exclusive range: 1, 2, 3, 4

# We can make ranges of letters, too!
('a'..'d')  # a, b, c, d

# for i in 0..2
#     puts "#{i} zombies incoming!"
# end


###################### TIMES LOOP ######################
# 5.times do
#     puts "Hello, world!"
# end

# with loop number, (starts at 0)
5.times do |number|
    puts "Alternative fact number #{number}"
end