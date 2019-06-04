require_relative 'test_helper'

class ShiftTest < Minitest::Test

  def setup
    @shift = Shift.new("02715", "040895")

  end

  def test_it_exists
    assert_instance_of Shift, @shift
  end

  def test_shift_total
    assert_equal [3,27,73,20], @shift.shifts
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

  def test_reverse_shift
    assert_equal "hello world!", @shift.reverse_shift("keder ohulw!")
  end
end
