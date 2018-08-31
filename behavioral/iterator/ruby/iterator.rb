class Lion
  attr_reader :weight, :age

  def initialize(weight, age)
    @weight = weight
    @age = age
  end
end

class Tiger
  attr_reader :weight, :age

  def initialize(weight, age)
    @weight = weight
    @age = age
  end
end

class Bear
  attr_reader :weight, :age

  def initialize(weight, age)
    @weight = weight
    @age = age
  end
end

class OhMy
  attr_reader :weight, :age

  def initialize(weight, age)
    @weight = weight
    @age = age
  end
end

class Zookeeper
  # include Enumerable
  def initialize(animals = [])
    @animals = animals
    @index = 0
  end

  # def each(&block)
  #   @animals.each(block)
  # end

  def has_next?
    @index < @animals.length
  end

  def animal
    @animals[index]
  end

  def next_animal
    value = @animals[@index]
    @index += 1
    value
  end

  def map
    mapped = []
    while has_next? do
      mapped << yield(next_animal)
    end
    mapped
  end
end

animals = [
  Lion.new(100, 3),
  Tiger.new(200, 9),
  Bear.new(700, 5),
  OhMy.new(300, 2),
]

puts Zookeeper.new(animals).map{ |animal| "weight: #{animal.weight}"}
puts Zookeeper.new(animals).map{ |animal| "age: #{animal.age}"}
