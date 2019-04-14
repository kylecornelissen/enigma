require 'date'

class Enigma
  def encrypt(message, key, date)
    key = key_randomizer
    encrypt_hash = {:encryption => message, :key => key, :date => date}
  end

  def key_randomizer
    "%05d" % rand(10**5)
  end

  # get date and square it

end
