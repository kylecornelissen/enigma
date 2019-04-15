require './test/test_helper'

class OffSetTest < Minitest::Test
  def setup
    @offset = OffSet.new
    @today = Time.now.strftime("%d%m%y")
  end

  def test_offset_class_exists
    assert_instance_of OffSet, @offset
  end

  def test_current_date_returns_todays_date_in_MMDDYY
    expected = @today
    assert_equal expected, @offset.current_date
    assert_equal 6, @offset.current_date.size
    assert_instance_of String, @offset.current_date
  end

  def test_square_date_multiplies_current_date_times_current_date
    expected = (@today.to_i * @today.to_i).to_s
    assert_equal expected, @offset.square_date
  end

  def test_square_date_last_four_returns_last_four_digits_of_square_date
    expected = ((@today.to_i * @today.to_i).to_s)[-4..-1]
    assert_equal expected, @offset.square_date_last_four
  end

  def test_split_last_four_returns_array_of_four_offsets
    assert_equal 4, @offset.split_last_four.count
  end

end
