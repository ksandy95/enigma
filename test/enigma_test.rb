require_relative 'test_helper'


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
    skip
    expected = {
      decryption: "hello world",
      key: "02715",
      date: "040895" }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_encryption_with_todays_date
    expected = {
      encryption: "mfhatasdwm ",
      key: "02715",
      date: Time.now.strftime("%d%m%y")}
    assert_equal expected, @enigma.encrypt("hello world", "02715")
  end

  def test_decryption_with_todays_date
    skip
    expected = {
      decryption: "",
      key: "02715",
      date: Time.now.strftime("%d%m%y")}
    assert_equal expected, @enigma.decrypt(encrypted[:encryption], "02715")
  end

  def test_encryption_with_todays_date_and_random_key
    skip
    expected = {
      encryption: "",
      key: key,
      date: Time.now.strftime("%d%m%y")}
    assert_equal expected, @enigma.encrypt("hello world")
  end
end
