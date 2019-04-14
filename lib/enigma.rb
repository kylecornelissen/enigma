class Enigma
  def encrypt(message, key, date)
    encrypt_hash = {:encryption => message, :key => key, :date => date}
  end

end
