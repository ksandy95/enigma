require 'pry'
require './lib/offset'

class Shift

  attr_reader :key, :date
  def initialize(key = Key.new.key, date = Time.now.strftime("%d%m%y"))
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

  def character_shift(message)
    message.downcase.chars.map do |character|
      next character if !@range.include?(character)
      index = @range.find_index(character)
      @range.rotate(index + shift_rotation).first
    end.join
  end

end
