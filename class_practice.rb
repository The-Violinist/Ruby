class Student
  attr_accessor :first_name, :last_name, :email, :username

  @first_name
  @last_name
  @email
  @username
  @password

  # # Attribute setter
  # def first_name=(name)
  #   @first_name = name
  # end

  # # Attribute getter
  # def first_name
  #   @first_name
  # end

end

david = Student.new
david.first_name = "David"
david.last_name = "Armstrong"
david.email= "something@anywhere.com"
david.username = "violinist"

puts david.first_name
puts david.last_name
puts david.email
puts david.username