class Enigma
  def encrypt(message, key = KeyGen.new, date = current_date)
    encrypt_hash = {:encryption => message, :key => key, :date => date}
  end

  def current_date
    Time.now.strftime("%d%m%y")
  end

  # def key_shifter
  #   alfa_shift = split_keys[0] + split_last_four[0]
  #   bravo_shift = split_keys[1] + split_last_four[1]
  #   charlie_shift = split_keys[2] + split_last_four[2]
  #   delta_shift = split_keys[3] + split_last_four[3]
  #   shifter_keys = [alfa_shift, bravo_shift, charlie_shift, delta_shift]
  # end

end
