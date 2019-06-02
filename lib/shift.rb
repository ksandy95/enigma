require 'pry'

class Shift

  def initialize
    @letters = {}
    @key = Key.new
    @offset = Offset.new
  end

end
