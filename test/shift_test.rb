require 'pry'
require 'Minitest/pride'
require 'Minitest/autorun'
require './lib/offset'
require './lib/key'
require './lib/shift'

class ShiftTest < Minitest::Test

  def setup
    @offset = Offset.new
    @key = Key.new
    @shift = Shift.new
  end

  def test_it_exists
    assert_equal Shift, @shift
  end

  def test_abcd_shifts
    assert_equal 0, @shift.a
    assert_equal 1, @shift.b
    assert_equal 3, @shift.c
    assert_equal 4, @shift.d
  end

end
