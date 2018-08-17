require './cpu.rb'

class Motherboard
  attr_accessor :cpu
  attr_accessor :memory_size

  def initialize(cpu=BasicCPU.new, memory_size=1024)
    @cpu = cpu
    @memory_size = memory_size
  end
end
