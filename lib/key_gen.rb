class KeyGen
  attr_reader :random_key
  
  def initialize
    @random_key = "%05d" % rand(10**5)
  end

  def split_keys
    alfa_key = @random_key[0..1]
    bravo_key = @random_key[1..2]
    charlie_key = @random_key[2..3]
    delta_key = @random_key[3..4]
    split_keys = [alfa_key, bravo_key, charlie_key, delta_key]
  end

end
