require './test/test_helper'

class KeyGenTest < Minitest::Test
  def setup
    @key_gen = KeyGen.new("02715")
  end

  def test_keygen_class_exists
    assert_instance_of KeyGen, @key_gen
  end

  def test_initializes_with_keygen_argument
    assert_equal "02715", @key_gen.random_key
  end

  def test_random_key_generates_random_key_when_no_argument_given
    key_gen2 = KeyGen.new
    assert_equal 5, key_gen2.random_key.size
    assert_instance_of String, key_gen2.random_key
  end

  def test_split_key_splits_random_key_into_four_keys
    assert_equal ["02", "27", "71", "15"], @key_gen.split_keys
  end

end
