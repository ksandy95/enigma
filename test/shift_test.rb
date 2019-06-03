require 'pry'
require 'Minitest/pride'
require 'Minitest/autorun'
require './lib/offset'
require './lib/key'
require './lib/shift'

class ShiftTest < Minitest::Test

  def setup
    @shift = Shift.new("02715", "040895")
    @message_example = "Hello World!"
  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_shift_rotation
    assert_equal 3, @shift.shift_rotation
    assert_equal 27, @shift.shift_rotation
    assert_equal 73, @shift.shift_rotation
    assert_equal 20, @shift.shift_rotation
    assert_equal 3, @shift.shift_rotation
  end

end
