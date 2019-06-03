require_relative 'test_helper'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new("040895")
    @offset_1 = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_date_is_correct
    assert_equal "040895", @offset.date
    assert_equal Time.now.strftime("%d%m%y"), @offset_1.date
  end

  def test_date_numeric_square
    assert_equal 1672401025, @offset.square_date
    assert_equal @offset_1.numeric_date * @offset_1.numeric_date, @offset_1.square_date
  end

  def test_last_four
    expected = [1,0,2,5]
    assert_equal expected, @offset.last_four
    assert_equal 4, @offset_1.last_four.count
  end

end
