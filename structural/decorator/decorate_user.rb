require './user.rb'
require './user_decorator.rb'
user = User.new(
  first_name: "Bogdan",
  last_name: "Denkovych",
  birthday: Time.new(1996, 6, 27, 6, 0, "+03:00")
)

user_decorator = UserDecorator.new(user)

p user_decorator.class # => UserDecorator
p user_decorator.first_name # => "Bogdan"
p user_decorator.last_name # => "Denkovych"
p user_decorator.full_name # => "Bogdan Denkovych"
p user_decorator.birthday # => 1996-06-27 06:00:00 +0300
p user_decorator.age # => 20
