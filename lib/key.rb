require 'pry'

class Key

  attr_reader :a, :b, :c, :d
  def initialize
    @a = []
    @b = []
    @c = []
    @d = []
    @random_keys = []
  end

  def random_numbers
    5.times { @random_keys << rand(0..9)}
    @random_keys

  end

  def key_grouping
    a = @random_keys.combination(2).to_a
      b = a.uniq(&:first)
        c = b.map{ |arr| arr.join }
          d = c.map{ |num| num.to_i }
          d
  end

end
