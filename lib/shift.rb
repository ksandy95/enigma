require 'pry'

class Shift

  def initialize
    @letters = {}
    @key = Key.new
    @offset = Offset.new
  end

  def letter_divide
    @letters[:a] = @offset.offset_total[0]
    @letters[:b] = @offset.offset_total[1]
    @letters[:c] = @offset.offset_total[2]
    @letters[:d] = @offset.offset_total[3]
    @letters
  end

end
