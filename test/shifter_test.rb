require './test/test_helper'

class ShifterTest < Minitest::Test
  def setup
    @shifter = Shifter.new
  end

  def test_shifter_class_exists
    assert_instance_of Shifter, @shifter
  end

  def test_key_shifter_adds_split_last_four_and_split_keys
    assert_equal 4, @shifter.key_shifter(@shifter.key_gen.split_keys, @shifter.offset.split_last_four).length
  end

end
