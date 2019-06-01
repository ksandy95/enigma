require 'pry'

class Key

  attr_reader :a, :b, :c, :d
  def initialize
    @a = []
    @b = []
    @c = []
    @d = []
    @random_keys = Array.new
  end

  def random_numbers
    5.times { @random_keys << rand(0..9)}
  end

end
