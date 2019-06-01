require 'pry'
require 'Minitest/pride'
require 'Minitest/autorun'
require './lib/enigma'
require 'date'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
  end

  def test_it_exists
    assert_instance_of Enigma, @enigma
  end

  def test_it_encripts
    actual = @enigma.encrypt("hello world", "02715", "040895")
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895" }
    assert_equal expected, actual
  end

  def test_it_decrypts
    actual = @enigma.decrypt("keder ohulw", "02715", "040895")
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895" }
    assert_equal expected, actual
  end

  def test_encryption_with_todays_date
    actual = @enigma.encrypt("hello world", "02715")
    expected = {
      encryption: "",
      date: "" }
    assert_equal expected, actual
  end

  def test_decryption_with_todays_date
    actual = @enigma.decrypt(encrypted[:encryption], "02715")
    expected = {
      decryption: "",
      date: "" }
    assert_equal expected, actual
  end
end
