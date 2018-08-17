require './encrypter.rb'
require './string_io_adapter.rb'

encrypter = Encrypter.new('SECRET_KEY')

reader = File.open('message.txt')
writer = File.open('message.encrypted','w')
encrypter.encrypt(reader, writer)

reader = StringIOAdapter.new('We attack at dawn')
writer = File.open('out.txt', 'w')
encrypter.encrypt(reader, writer)
