require 'pry'
require 'Minitest/pride'
require 'Minitest/autorun'
require './lib/key'

class KeyTest < Minitest::Test

  def setup
    @key = Key.new("02715")
    @key_1 = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key
  end

  def test_key_digit_creation
    expected = [02,27,71,15]
    assert_equal expected, @key.key_grouping
    assert_equal 4, @key_1.key_grouping.count
  end

end
