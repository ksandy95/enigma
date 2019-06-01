require 'pry'
require 'Minitest/pride'
require 'Minitest/autorun'
require './lib/key'
require 'date'


class KeyTest < Minitest::Test

  def setup
    @key_1 = Key.new
  end

  def test_it_exists
    assert_instance_of Key, @key_1
  end

end
