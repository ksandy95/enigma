require './lib/offset'
require './lib/key'
require './lib/shift'
require './lib/enigma.rb'

message = File.open(ARGV[0], "r")
incoming_message = message.read
secret_message = Enigma.new.encrypt(incoming_message, key = Key.new.key, date = Offset.new.date)
writer = File.open(ARGV[1], "w")
writer.puts secret_message[:encryption]
writer.close
puts "Created '#{ARGV[1]}' with the key #{secret_message[:key]} and date #{secret_message[:date]}"
