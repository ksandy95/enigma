require 'pry'
require 'Minitest/pride'
require 'Minitest/autorun'
require './lib/offset'
require './lib/key'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new
    @key_1 = Key.new
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_numeric_date
    assert_equal 60119, @offset.numeric_date
  end

  def test_date_numeric_square
    assert_equal 3614294161, @offset.square_date
  end

  def test_last_four
    assert_equal [4, 1, 6, 1], @offset.last_four
  end

  def test_offset_total
    assert_equal [], @offset.offset_total
  end

end
