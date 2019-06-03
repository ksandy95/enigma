require_relative 'test_helper'

class ShiftTest < Minitest::Test

  def setup
    @shift = Shift.new("02715", "040895")
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

  def test_character_shift
    assert_equal "keder ohulw!", @shift.character_shift("Hello World!")
  end
end
