require './test/test_helper'

class ShifterTest < Minitest::Test
  def setup
    @shifter = Shifter.new
  end

  def test_shifter_class_exists
    assert_instance_of Shifter, @shifter
  end

end
