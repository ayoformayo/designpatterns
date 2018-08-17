require './computer_builder.rb'

builder = ComputerBuilder.new
builder.turbo_cpu
builder.add_hard_disk(1_000_000)
builder.memory_size = 16000
builder.add_cd(true)
builder.add_dvd
computer = builder.computer
p computer
