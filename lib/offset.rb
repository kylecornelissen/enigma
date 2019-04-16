require_relative 'date_today'

class OffSet
include DateToday
attr_reader :date
  def initialize(date = current_date)
    @date = date
  end
  def square_date
    (@date.to_i * @date.to_i).to_s
  end

  def square_date_last_four
    square_date[-4..-1]
  end

  def split_last_four
    alfa_offset = square_date_last_four[0]
    bravo_offset = square_date_last_four[1]
    charlie_offset = square_date_last_four[2]
    delta_offset = square_date_last_four[3]
    offsets = [alfa_offset, bravo_offset, charlie_offset, delta_offset]
  end
end
