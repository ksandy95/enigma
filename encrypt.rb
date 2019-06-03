require './lib/offset'
require './lib/key'
require './lib/shift'
require './lib/enigma.rb'
enigma = Enigma.new
message = File.open(ARGV[0], "r")
incoming_message = message.read
secret_message = enigma.encrypt(incoming_message, "82648", "240818")
writer = File.open(ARGV[1], "w")
writer.puts secret_message[:encryption]
puts "Created '#{ARGV[1]}' with the key #{secret_message[:key]} and date #{secret_message[:date]}"
