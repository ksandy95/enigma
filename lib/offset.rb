require 'pry'

class Offset
  attr_reader :date
  def initialize(date = Time.now.strftime("%d%m%y"))
    @date = date
  end

  def numeric_date
    @date.to_i
  end

  def square_date
    numeric_date * numeric_date
  end

  def last_four
    last_digits = square_date.to_s.slice(-4..-1).split(//)
    last_digits.map{ |digit| digit.to_i }
  end

end
