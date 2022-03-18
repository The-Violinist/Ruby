require_relative 'BcryptPractice'
#$LOAD_PATH << "."

profiles = [
  {username: "David", password: "password1" },
  {username: "John", password: "password2" },
  {username: "Bill", password: "password3" },
  {username: "Mark", password: "password4" }
]

hashed = BcryptPractice.secure_users(profiles)
p hashed