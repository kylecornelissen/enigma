require './test/test_helper'

class ShifterTest < Minitest::Test
  def setup
    @shifter = Shifter.new("02715", "040895")
  end

  def test_shifter_class_exists
    assert_instance_of Shifter, @shifter
  end

  def test_key_shifter_adds_split_last_four_and_split_keys
    assert_equal [3, 27, 73, 20], @shifter.key_shifter(@shifter.key_gen.split_keys, @shifter.offset.split_last_four)
  end

  def test_shift_letters_encrypts_and_decrypts_message_using_shift_keys
    assert_equal "keder ohulw", @shifter.shift_letters("hello world", "encrypt")
    assert_equal "keder ohulw", @shifter.shift_letters("HELLO WORLD", "encrypt")
    assert_equal "!keder, ohulw?!", @shifter.shift_letters("!Hello, World?!", "encrypt")
    assert_equal "hello world", @shifter.shift_letters("keder ohulw", "decrypt")
    assert_equal "!hello, world?!", @shifter.shift_letters("!keder, ohulw?!", "decrypt")
  end

  def test_scramble_letter_shifts_letter
    split_keys1 = (["02", "27", "71", "15"])
    split_last_four1 = (["1", "0", "2", "5"])
    @shifter.key_shifter(split_keys1, split_last_four1)
    assert_equal "k", @shifter.scramble_letter("h")
  end



end
