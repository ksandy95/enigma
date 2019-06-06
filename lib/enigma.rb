require 'pry'

class Enigma

  def encrypt(message, key = Key.new.key, date = Offset.new.date)
    shift = Shift.new(key, date)
    { encryption: shift.character_shift(message), key: key, date: date}
  end

  def decrypt(message, key, date = Offset.new.date)
    shift = Shift.new(key, date)
    {decryption: shift.reverse_shift(message), key: key, date: date }
  end

  # def crack(message, date)
  #   counter = 00001
  #   until message.slice(-4..-1)
  #     decrypt(message, counter.to_s.rjust(5,'0'), date = Offset.new.date) == " end"
  #     counter += 1
  #   end
  # end

end
