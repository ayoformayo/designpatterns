class Drive
  attr_reader :type # either :cd, :dvd or :hard_disk
  attr_reader :size # in Mb
  attr_reader :writable # true if this drive is writable

  def initialize(type, size, writable)
    @type = type
    @size = size
    @writable = writable
  end
end
