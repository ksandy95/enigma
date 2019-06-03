require_relative 'test_helper'

class EnigmaTest < Minitest::Test

  def setup
    @enigma = Enigma.new
    @key = Key.new
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
      encryption: "mfhatasdwm ",
      key: "02715",
      date: Time.now.strftime("%d%m%y")}
    assert_equal expected, @enigma.encrypt("hello world", "02715")
  end

  def test_decryption_with_todays_date
    Offset.stub_any_instance :date, Offset.new.date do
      expected = {
        decryption: "hello world",
        key: "01135",
        date: Offset.new.date}
      assert_equal expected, @enigma.decrypt("lqdusloxvxw", "01135")
    end
  end

  def test_encryption_with_todays_date_and_random_key
      Key.stub_any_instance :key, "01135" do
      expected = {
        encryption: "lqdusloxvxw",
        key: "01135",
        date: Time.now.strftime("%d%m%y")}
      assert_equal expected, @enigma.encrypt("hello world")
    end
  end
end
