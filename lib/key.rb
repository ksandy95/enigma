require 'pry'

class Key

  attr_reader :key
  def initialize(key = rand(1..99999).to_s.rjust(5,'0'))
    @key = key
    @key_group = []
  end

  def key_grouping
    key.split(//).to_a.each_cons(2){ |num| @key_group << num }
    group_of_keys = @key_group.map { |arr| arr.join.to_i }
    group_of_keys
  end

end
