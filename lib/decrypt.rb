require './lib/offset'
require './lib/key'
require './lib/shift'
require './lib/enigma.rb'

read_file, write_file, key, date = ARGV
secret_message = File.open(read_file, "r")
decrypted_message = File.open(write_file, "w")
decryption = Enigma.new.decrypt(secret_message.read.chomp, key, date = Time.now.strftime("%d%m%y"))
decrypted_message.write(decryption[:decryption])

puts "Created '#{write_file}' with the key #{decryption[:key]} and date #{decryption[:date]}"
