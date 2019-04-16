require_relative 'date_and_key_generators'

class Enigma
  include Generators
  attr_reader :key,
              :date

  def initialize
    @key = random_key_generator
    @date = current_date
  end

  def encrypt(message, key = @key, date = current_date)
    @shifter = Shifter.new(key, date)
    scrambled_message = @shifter.shift_letters(message, "encrypt")
    {:encryption => scrambled_message, :key => key, :date => date}
  end

  def decrypt(message, key, date)
    @shifter = Shifter.new(key, date)
    unscrambled_message = @shifter.shift_letters(message, "decrypt")
    {:encryption => unscrambled_message, :key => key, :date => date}
  end
end
