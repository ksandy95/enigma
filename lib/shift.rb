require 'pry'
require './lib/offset'

class Shift

  def initialize
    @range = ("a".."z").to_a << " "
    @offset = Offset.new(date)
    @key = Key.new(key)
  end

  def shift_total
    a = []
    a << @key.key_grouping
    a << last_four
    a.transpose.map {|x| x.reduce(:+)}
  end

  def shift_rotation
    shift = offset_total.first
    offset_total.rotate!
    shift
  end

  def character_shift
    message.downcase.each_char { |character|
    @range.find(charater)}
  end
  # message.each_char { |x| conditional for abcd offsets }

  def character_loop
    #at the start of the string, for every character, downcase.
    # the characters start out at the beginning of the range and when shifted
    # the index position is summed with the offset total to get the new index position.
    # at the beginning to the string, the first character is shifted by the
    # value of @letters[:a] to correspond to the range.
  end
end
