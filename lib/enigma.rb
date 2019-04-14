class Enigma
  def encrypt(message, key, date)
    key = key_randomizer
    date = current_date
    encrypt_hash = {:encryption => message, :key => key, :date => date}
  end

  def key_randomizer
    "%05d" % rand(10**5)
  end

  def current_date
    Time.now.strftime("%d%m%y")
  end

  def split_keys
    five_digit_key = key_randomizer
    alfa_key = five_digit_key[0..1]
    bravo_key = five_digit_key[1..2]
    charlie_key = five_digit_key[2..3]
    delta_key = five_digit_key[3..4]
    split_keys = [alfa_key, bravo_key, charlie_key, delta_key]
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

  def shifter
    alfa_shift = split_keys[0] + split_last_four[0]
    bravo_shift = split_keys[1] + split_last_four[1]
    charlie_shift = split_keys[2] + split_last_four[2]
    delta_shift = split_keys[3] + split_last_four[3]
    shifter_keys = [alfa_shift, bravo_shift, charlie_shift, delta_shift]
  end

end
