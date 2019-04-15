require './test/test_helper'

class KeyGenTest < Minitest::Test
  def setup
    @key_gen = KeyGen.new
  end

  def test_keygen_class_exists
    assert_instance_of KeyGen, @key_gen
  end

  def test_key_randomizer
    assert_equal 5, @key_gen.key_randomizer.size
  end

  def test_split_key_splits_random_key_into_four_keys
    assert_equal 4, @key_gen.split_keys.count
  end

end
