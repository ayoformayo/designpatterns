class Lion
  attr_reader :weight

  def initialize(weight)
    @weight = weigth
  end
end

class Tiger
  attr_reader :weight

  def initialize(weight)
    @weight = weigth
  end
end

class Bear
  attr_reader :weight

  def initialize(weight)
    @weight = weigth
  end
end

class OhMy
  attr_reader :weight

  def initialize(weight)
    @weight = weigth
  end
end

class Zookeeper
  def initialize(animals = [])
    p "here"
    @animals = Array.wrap(animals)
    @index = 0
  end

  def has_next?
    @index < @animals.length
  end

  def animal
    @animals[index]
  end

  def next
    value = @array[@index]
    @index += 1
    value
  end

  def sorted_by(&block)
    p @animals.sort_by(&:weight)
  end
end

animals = [
  Lion.new(100),
  Tiger.new(200),
  Bear.new(700),
  OhMy.new(300),
]

p Zookeeper.new(animals).sorted_by{ |animal| animal.weight}
