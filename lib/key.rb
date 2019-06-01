require 'pry'

class Key

  attr_reader :a, :b, :c, :d
  def initialize
    @a = []
    @b = []
    @c = []
    @d = []
    @random_keys = []
    @key_group = []
  end

  def random_num
    5.times { @random_keys << rand(0..9)}
    @random_keys
  end

  def key_grouping
    random_num.each_cons(2){ |num| @key_group << num }
    @key_group.map { |arr| arr.join.to_i }
    @key_group
  end

  def key_assignment
  
  end

end
