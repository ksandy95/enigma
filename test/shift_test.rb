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
    assert_equal 0, @shift.a.keys
    assert_equal 1, @shift.b.keys
    assert_equal 3, @shift.c.keys
    assert_equal 4, @shift.d.keys
  end

  def test_character_split
    assert_equal [], @shift.a.values
    assert_equal [], @shift.b.values
    assert_equal [], @shift.c.values
    assert_equal [], @shift.d.values
  end

end
