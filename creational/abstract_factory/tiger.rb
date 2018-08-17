require './animal'

class Tiger < Animal
  def eat
    puts "Tiger #{name} is eating anything it wants."
  end

  def speak
    puts "Tiger #{name} Roars!"
  end

  def sleep
    puts "Tiger #{name} sleeps anywhere it wants."
  end
end
