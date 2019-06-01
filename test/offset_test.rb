require 'pry'
require 'Minitest/pride'
require 'Minitest/autorun'
require './lib/offset'
require 'date'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_it_has_date
    assert_equal Today, @offset.date
  end

  def test_date_numeric_square
    assert_equal 3614294161, @offset.square_date
  end

  def test_digits_of_squared_date
    assert_equal 4, @offset.date_group[0]
    assert_equal 1, @offset.date_group[1]
    assert_equal 6, @offset.date_group[2]
    assert_equal 1, @offset.date_group[3]
  end

end
