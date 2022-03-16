# Project #1 from "The Complete Ruby on Rails Developer Course from Udemy, taught by Mashrur Hossain"
# This program puts together for and while loops and uses conditionals to check input against an array of hashes

# Array containing username and password combos as hashes
profiles = [
  {username: "David", password: "password1" },
  {username: "John", password: "password2" },
  {username: "Bill", password: "password3" },
  {username: "Mark", password: "password4" }
]

# Take input from a user in the form of a username and password
def get_input
  puts "Please enter a username: "
  user_name = gets.chomp
  puts "Please enter a password: "
  pass_word = gets.chomp
  return user_name, pass_word                                                         # Return the combo as an array
end

# Loop through all hashes in 'profiles' and check for matching combos with the input
def look_at_profiles(profiles, creds)
  for profile in profiles do
    if profile[:username] == creds[0] && profile[:password] == creds[1]
      return profile                                                              # Return the hash entry if it is a match
    else
      x = false
    end
  end
  return x                                                                            # Return 'false' if there is no match
end

# 
def check_input(profiles)
  i = 0                                                                               # Counter for the number of attempts
  while true do
    creds = get_input                                                               # Retrieve the input from the user
    reply = look_at_profiles(profiles, creds)                                       # Check the input against the 'profiles' array
    if reply == false                                                               # If there is not a match, increment the counter
      i += 1
    else
      puts reply                                                                  # If there is a match print the hash
      i = 0
    end
    if i == 3                                                                       # If the counter reaches 3, end the loop
      puts "You have exceeded the number of attempts."
      break
    end
  end
end

check_input(profiles)