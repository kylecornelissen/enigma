require_relative 'date_and_key_generators'

class Enigma
  include Generators
  def initialize
    @shifter = Shifter.new
  end


  def encrypt(message, key = @shifter.key_gen.random_key, date = current_date)

    {:encryption => message, :key => key, :date => date}
  end

end
