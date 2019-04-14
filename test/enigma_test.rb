require './test/test_helper'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
  end

  def test_enigma_class_exists
    assert_instance_of Enigma, @enigma
  end

  def test_encrypt_returns_hash_with_encrypted_message_and_key_and_date
    skip
    expected = {
      encryption: "hello world",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_key_randomizer
    assert_equal 5, @enigma.key_randomizer.size
  end

  def test_current_date_returns_todays_date_in_MMDDYY
    assert_equal Time.now.strftime("%d%m%y"), @enigma.current_date
  end

  def test_split_key_splits_random_key_into_four_keys
    assert_equal 4, @enigma.split_keys.count
  end

end
