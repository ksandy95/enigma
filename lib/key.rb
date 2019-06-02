require 'pry'

class Key

  def initialize
    @random_keys = []
    @key_group = []
  end

  def random_num
    5.times { @random_keys << rand(0..9)}
    @random_keys
  end

  def key_grouping
    random_num.each_cons(2){ |num| @key_group << num }
    a = @key_group.map { |arr| arr.join.to_i }
    a
  end

end
