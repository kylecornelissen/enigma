require_relative 'date_today'

class Enigma
  include DateToday

  def encrypt(message, key = KeyGen.new, date = current_date)
    encrypt_hash = {:encryption => message, :key => key, :date => date}
  end

end
