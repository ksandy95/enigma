require 'pry'
require './lib/offset'

class Shift

  def initialize(key, date)
    @range = ("a".."z").to_a << " "
    @offset = Offset.new(date)
    @key = Key.new(key)
    @shifts = shift_total
  end

  def shift_total
    final_array = []
    final_array << @key.key_grouping
    final_array << @offset.last_four
    final_array.transpose.map {|num| num.reduce(:+)}
  end

  def shift_rotation
    shift = @shifts.first
    @shifts.rotate!
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
