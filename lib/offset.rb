require 'pry'
require './lib/key.rb'
class Offset

  def initialize
    @key = Key.new
  end

  def date
    Time.now.strftime("%m%d%y")
  end

  def numeric_date
    date.to_i
  end

  def square_date
    numeric_date * numeric_date
  end

  def last_four
    a = square_date.to_s.slice(-4..-1).split(//)
    a.map{ |x| x.to_i }
  end

  def offset_total
    a = []
    a << @key.key_grouping
    a << last_four
    a.transpose.map {|x| x.reduce(:+)}
  end

end
