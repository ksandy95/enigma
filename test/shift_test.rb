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

end
