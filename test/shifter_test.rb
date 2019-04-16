require './test/test_helper'

class ShifterTest < Minitest::Test
  def setup
    @shifter = Shifter.new("02715", "040895")
  end

  def test_shifter_class_exists
    assert_instance_of Shifter, @shifter
  end

  def test_key_shifter_adds_split_last_four_and_split_keys
    assert_equal 4, @shifter.key_shifter(@shifter.key_gen.split_keys, @shifter.offset.split_last_four).length
  end

  def test_scramble_message_encrypts_message_using_shift_keys
    assert_equal "keder ohulw", @shifter.scramble_message("hello world")
    assert_equal "keder ohulw", @shifter.scramble_message("HELLO WORLD")
    # assert_equal "keder ohwlw!" @shifter.scramble_message("Hello World!")
  end

end
