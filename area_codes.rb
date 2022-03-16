# Project #2 from "The Complete Ruby on Rails Developer Course" from Udemy, taught by Mashrur Hossain
# This program takes input from a user in the form of a city name and returns the area code for that city

# Hash of city names and their area codes
codes = {
  "Seattle": "206",
  "Kirkland": "425",
  "Spokane": "509",
  "Olympia": "360"
}

# Prints a list of the city names
def city_names(area_codes)
  puts area_codes.keys
end

# Takes the input from the user and finds the area code in the hash
def get_codes(area_codes, key)
  if area_codes.include?(key.to_sym) == false                               # If the city is not in the hash, it returns feedback
    puts "That city is not in the hash."
  else
    puts "The area code for #{key} is #{area_codes.fetch(key.to_sym)}"      # If the city is in the hash, it returns the code
  end
end

# Ask the user for input until they tell the program to stop
loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp
  break if answer.downcase != "y"
  puts "Which city do you want the area code for?"
  city_names(codes)                                                         # Print a list of the keys in the hash
  city_name = gets.chomp                                                    # Take input from the user
  get_codes(codes, city_name)                                               # Find the code based on that input
end