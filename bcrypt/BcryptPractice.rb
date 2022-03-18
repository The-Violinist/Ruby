module BcryptPractice
  require 'bcrypt'

  # List of profiles to use for password authentication
  profiles = [
    {username: "David", password: "password1" },
    {username: "John", password: "password2" },
    {username: "Bill", password: "password3" },
    {username: "Mark", password: "password4" }
  ]

  # Take a password and turn it into a hash
  def BcryptPractice.create_digest(password)
    BCrypt::Password.create(password)
  end

  # Check the hash and confirm that it equals the password
  def BcryptPractice.verify_digest(hash)
    BCrypt::Password.new(hash)
  end

  # Loop thru user profiles and convert the passwords to hashes
  def BcryptPractice.secure_users(user_profiles)
    user_profiles.each do |user_profile|
      user_profile[:password] = create_digest(user_profile[:password])
    end
  end

  def BcryptPractice.authenticate_user(username, password, profiles)
    profiles.each do |user|
      if user[:username] == username && verify_digest(user[:password]) == password
        return "That is a match"
      end
    end
    "Credentials were incorrect"
  end

  # secure_users(profiles)
  # puts "Please enter a username: "
  # username = gets.chomp
  # puts "Please enter the password"
  # password = gets.chomp
  # puts authenticate_user(username, password, profiles)
end
