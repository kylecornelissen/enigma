class Enigma
  def encrypt(message, key = KeyGen.new, date = current_date)
    encrypt_hash = {:encryption => message, :key => key, :date => date}
  end

  def current_date
    Time.now.strftime("%d%m%y")
  end

end
