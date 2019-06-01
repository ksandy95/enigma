require 'pry'
require 'Minitest/pride'
require 'Minitest/autorun'
require './lib/offset'
require 'date'

class OffsetTest < Minitest::Test

  def setup
    @offset = Offset.new
  end

  def test_it_exists
    assert_instance_of Offset, @offset
  end

  def test_it_has_date
    assert_equal Today, @offset.date
  end

  def test_date_numeric_square

  end

  def test_digits_of_squared_date

  end

end
