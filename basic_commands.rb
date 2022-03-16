# puts "Enter a number"                                                     # Get user input
# num = gets.chomp
# puts "The number you entered is #{num}"
# puts num.to_i.class                                                       # Convert to an integer
# puts num.to_s.class                                                       # Convert to a string
# (40).times { print "-"}


# puts "\nEnter a data input"
# data = gets.chomp

# if data.class == String                                                     # Conditional
#   puts "That is data type string"
# elsif data.class == Integer
#   puts "That is an integer"
# else
#   puts "That is a different data type"
# end
# (40).times { print "-"}


# arr = [1,2,3,4,5]                                                           # Create an array
# puts
# puts "#{arr.reverse}\n"                                                     # Reverse
# puts "#{arr.shuffle}\n"                                                     # Randomize order
# puts "#{arr.append(6)}\n"                                                   # Add item at end. Use unshift to add at the beginning
# x = arr.pop                                                                 # Remove the last item and assign it to a variable
# puts "The popped number is #{x}"
# puts "The array after popping #{arr}"                                       # Use uniq to remove duplicate values
# (40).times { print "-"}


# y = (1..9).to_a
# puts "\nArray created from range: #{y}"
# puts "Iterating through the items in the array"
# y.each { |item| puts (item.to_i * 2)}                                       # Loop thru and print each item multiplied by 2
# w = y.join(" ")                                                             # Concatenates array items with a space between characters
# puts "#{w}"
# puts "#{w.split(" ")}"

myHash = {a: 1, b: 2, c: 3, d: "Hello"}                                        # Crete dictionary (hash)
puts myHash[:c]                                                                # Print value by key
(40).times { print "-"}
puts
myHash.each { |key, value| puts value}                                         # Iterate thru and print values
(40).times { print "-"}
puts
myHash.delete(:d)
myHash.select { |k, v| puts v.odd? }
(40).times { print "-"}
puts
myHash.each { |k, v| myHash.delete(k) if v > 2 }                               # Remove an item with conditional
puts myHash

