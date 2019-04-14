require './test/test_helper'

class EnigmaTest < Minitest::Test

  def test_enigma_class_exists
    @enigma = Enigma.new
    assert_instance_of Enigma, @enigma
  end

end
