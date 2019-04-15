class KeyGen
  def key_randomizer
    "%05d" % rand(10**5)
  end

  def split_keys
    five_digit_key = key_randomizer
    alfa_key = five_digit_key[0..1]
    bravo_key = five_digit_key[1..2]
    charlie_key = five_digit_key[2..3]
    delta_key = five_digit_key[3..4]
    split_keys = [alfa_key, bravo_key, charlie_key, delta_key]
  end
  
end
