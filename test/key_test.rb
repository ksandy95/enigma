require 'pry'
require 'Minitest/pride'
require 'Minitest/autorun'
require './lib/key'
require 'date'


class KeyTest < Minitest::Test

  def setup
    @key_1 = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key_1
  end

  def test_it_has_arrays
    assert_equal [], @key_1.a
    assert_equal [], @key_1.b
    assert_equal [], @key_1.c
    assert_equal [], @key_1.d
  end

  def test_can_create_random_number_array
    assert_equal [], @key_1.random_numbers
  end

  def test_key_digit_creation
    assert_equal [], @key_1.key_grouping
  end

  def test_key_assignment
    assert_equal [], @key_1.a
    assert_equal [], @key_1.b
    assert_equal [], @key_1.c
    assert_equal [], @key_1.d
  end

end
