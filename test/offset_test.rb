require './test/test_helper'

class OffSetTest < Minitest::Test
  def setup
    @offset = OffSet.new("040895")
    @today = Time.now.strftime("%d%m%y")
  end

  def test_offset_class_exists
    assert_instance_of OffSet, @offset
  end

  def test_current_date_in_generator_module_returns_todays_date_in_MMDDYY
    expected = @today
    assert_equal expected, @offset.current_date
    assert_equal 6, @offset.current_date.size
    assert_instance_of String, @offset.current_date
  end

  def test_date_initializes_with_offset_argument
    assert_equal "040895", @offset.date
  end

  def test_date_initializes_with_current_date_if_no_argument_given
    offset2 = OffSet.new
    assert_equal @today, offset2.date
  end

  def test_square_date_multiplies_current_date_times_current_date
    assert_equal "1672401025", @offset.square_date
  end

  def test_square_date_last_four_returns_last_four_digits_of_square_date
    assert_equal "1025", @offset.square_date_last_four
  end

  def test_split_last_four_returns_array_of_four_offsets
    assert_equal ["1", "0", "2", "5"], @offset.split_last_four
  end
end
