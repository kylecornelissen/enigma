require 'date'

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

end
