class OffSet
  def current_date
    Time.now.strftime("%d%m%y")
  end

  def square_date
    (current_date.to_i * current_date.to_i).to_s
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