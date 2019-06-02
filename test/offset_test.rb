require 'pry'
require 'Minitest/pride'
require 'Minitest/autorun'
require './lib/offset'
require './lib/key'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new()
    @key_1 = Key.new
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_date_is_today
    assert_equal Time.now.strftime("%m%d%y"), @offset.date_1
  end

  def test_numeric_date
    assert_equal @offset.date_1.to_i, @offset.numeric_date
  end

  def test_date_numeric_square
    assert_equal @offset.numeric_date * @offset.numeric_date, @offset.square_date
  end

  def test_last_four
    assert_equal 4, @offset.last_four.count
  end

  def test_offset_total
    assert_equal 4, @offset.offset_total.count
  end

end
