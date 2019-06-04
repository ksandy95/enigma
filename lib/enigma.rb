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

end
