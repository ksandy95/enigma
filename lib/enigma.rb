require 'pry'

class Enigma


  def initialize
    @key = key
    @date = date
  end

  def encrypt(message, key = , date = )
    # The encrypt method takes a message String as an argument.
    # It can optionally take a Key and Date as arguments to use for encryption.
    # If the key is not included, generate a random key.
    # If the date is not included, use today’s date.
  end

  def decrypt
    # The decrypt method takes a ciphertext String and the Key used
    # for encryption as arguments. The decrypt method can optionally take a date
    # as the third argument. If no date is given,
    # this method should use today’s date for decryption.
  end

end
