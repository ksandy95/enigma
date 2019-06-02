require 'pry'
require 'Minitest/pride'
require 'Minitest/autorun'
require './lib/offset'
require './lib/key'
require './lib/shift'

class ShiftTest < Minitest::Test

  def setup
    @offset = Offset.new("040895")
    @shift = Shift.new
    @message_example = "Hello World!"
  end

  def test_it_exists
    assert_equal Shift, @shift
  end

  def test_shift_rotation
    assert_equal 3, @shift.shift_rotation
    assert_equal 27, @shift.shift_rotation
    assert_equal 73, @shift.shift_rotation
    assert_equal 20, @shift.shift_rotation
    assert_equal 3, @shift.shift_rotation
  end

end
