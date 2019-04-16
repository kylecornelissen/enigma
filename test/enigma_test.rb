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
    expected = {
      encryption: "keder ohulw",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.encrypt("hello world", "02715", "040895")
  end

  def test_decrypt_returns_hash_with_decrypted_message_and_key_and_date
    expected = {
      encryption: "hello world",
      key: "02715",
      date: "040895"
    }
    assert_equal expected, @enigma.decrypt("keder ohulw", "02715", "040895")
  end

  def test_current_date_returns_todays_date_in_MMDDYY
    expected = @today
    assert_equal expected, @enigma.current_date
    assert_equal 6, @enigma.current_date.size
    assert_instance_of String, @enigma.current_date
  end

end
