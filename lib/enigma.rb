require 'pry'
require './lib/offset'
require './lib/key'

class Enigma

  def encrypt(message, key = Key.new.key, date = Offset.new.date)
    shift = Shift.new(key, date)
    {encryption: shift.character_shift(message),
      key: key, date: date}
  end

  # def decrypt(encrypted, key, date = Offset.new)
  #
  # end

end
