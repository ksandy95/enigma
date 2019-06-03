require 'pry'
class Enigma

  def encrypt(message, key = Key.new.key, date = Offset.new.date)
    shift = Shift.new(key, date)
    encrypted = {
      encryption: shift.character_shift(message),
      key: key, date: date}
  end

  # def decrypt(key = Key.new.key, date = Offset.new.date)
  #   {decryption: encrypted[:encryption],
  #   key: key, date: date }
  # end

end
