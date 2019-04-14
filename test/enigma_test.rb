require './test/test_helper'

class EnigmaTest < Minitest::Test
  def setup
    @enigma = Enigma.new
    @today = Time.now.strftime("%d%m%y")
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
    expected = Time.now.strftime("%d%m%y")
    assert_equal expected, @enigma.current_date
  end

  def test_split_key_splits_random_key_into_four_keys
    assert_equal 4, @enigma.split_keys.count
  end

  def test_square_date_multiplies_current_date_times_current_date
    expected = (@today.to_i * @today.to_i).to_s
    assert_equal expected, @enigma.square_date
  end

  def test_square_date_last_four_returns_last_four_digits_of_square_date
    expected = ((@today.to_i * @today.to_i).to_s)[-4..-1]
    assert_equal expected, @enigma.square_date_last_four
  end

end
