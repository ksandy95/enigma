require './lib/offset'
require './lib/key'
require './lib/shift'
require './lib/enigma.rb'
enigma = Enigma.new
message = File.open(ARGV[0], "r")
incoming_message = message.read
decrypted_message = enigma.decrypt(incoming_message, "82648", "240818")
writer = File.open(ARGV[1], "w")
writer.puts decrypted_message[:decryption]
puts "Created '#{ARGV[1]}' with the key #{decrypted_message[:key]} and date #{decrypted_message[:date]}"
