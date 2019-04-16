require_relative 'date_and_key_generators'

class Enigma
  include Generators

  def encrypt(message, key = @shifter.key_gen.random_key, date = current_date)
    @shifter = Shifter.new(key, date)
    scrambled_message = @shifter.shift_letters(message, "encrypt")
    {:encryption => scrambled_message, :key => key, :date => date}
  end
end
