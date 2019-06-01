require 'pry'
require 'Minitest/pride'
require 'Minitest/autorun'
require './lib/key'
require 'date'


class KeyTest < Minitest::Test

  def setup
    @key_1 = Key.new
  end

end
