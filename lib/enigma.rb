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
    current_date.to_i * current_date.to_i
  end

end
