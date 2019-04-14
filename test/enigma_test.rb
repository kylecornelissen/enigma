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
    assert 5, @enigma.key_randomizer.size
  end

end
