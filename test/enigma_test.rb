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
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895" }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_it_decrypts
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895" }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_encryption_with_todays_date
    expected = {
      encryption: "",
      date: "" }
    assert_equal expected, @enigma.encrypt("hello world", "02715")
  end

  def test_decryption_with_todays_date
    expected = {
      decryption: "",
      date: "" }
    assert_equal expected, @enigma.decrypt(encrypted[:encryption], "02715")
  end

  def test_encryption_with_todays_date_and_random_key
    expected = {
      encryption: "",
      key: "",
      date: "" }
    assert_equal expected, @enigma.encrypt("hello world")
  end
end
