class Student
  # Combined setter and getter attributes
  attr_accessor :first_name, :last_name, :email, :username
  
  # # Only getter
  # attr_reader :username

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end
#  def set_username
#   @username = "hgorecki1"
#  end

  # # Attribute setter
  # def first_name=(name)
  #   @first_name = name
  # end

  # # Attribute getter
  # def first_name
  #   @first_name
  # end
 def to_s
  "First name: #{first_name}"
 end

end

# david = Student.new
# david.first_name = "David"
# david.last_name = "Armstrong"
# david.email= "something@anywhere.com"
# # david.username = "violinist"
# david.set_username
# puts david.first_name
# puts david.last_name
# puts david.email
# puts david.username

david = Student.new("David", "Armstrong", "email@email.com", "violinist", "password1")
puts david