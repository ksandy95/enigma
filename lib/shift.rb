require 'pry'

class Shift

  def initialize
    @letters = {}
    @key = Key.new
    @offset = Offset.new
    @range = (("a".."z").to_a << " ") * 5
  end

  def letter_divide
    @letters[:a] = @offset.offset_total[0]
    @letters[:b] = @offset.offset_total[1]
    @letters[:c] = @offset.offset_total[2]
    @letters[:d] = @offset.offset_total[3]
    @letters
  end

  # message.each_char { |x| conditional for abcd offsets }

  def character_loop
    #at the start of the string, for every character, downcase.
    # the characters start out at the beginning of the range and when shifted
    # the index position is summed with the offset total to get the new index position.
    # at the beginning to the string, the first character is shifted by the
    # value of @letters[:a] to correspond to the range.
end
