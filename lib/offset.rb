require 'pry'
require './lib/key.rb'
class Offset

  def initialize(date = date_1)
    @date = @date_1 unless date
    @date_1 = Time.now.strftime("%m%d%y")
  end

  def numeric_date
    @date_1.to_i
  end

  def square_date
    numeric_date * numeric_date
  end

  def last_four
    a = square_date.to_s.slice(-4..-1).split(//)
    a.map{ |x| x.to_i }
  end

end
