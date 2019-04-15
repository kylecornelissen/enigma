class Shifter
  attr_reader :key_gen,
              :offset,
              :characters
  def initialize
    @key_gen = KeyGen.new
    @offset = OffSet.new
    @characters = ("a".."z").to_a << " "
  end

  def key_shifter(split_keys = @key_gen.split_keys, split_last_four = @offset.split_last_four)
    alfa_shift = split_keys[0] + split_last_four[0]
    bravo_shift = split_keys[1] + split_last_four[1]
    charlie_shift = split_keys[2] + split_last_four[2]
    delta_shift = split_keys[3] + split_last_four[3]
    shifter_keys = [alfa_shift, bravo_shift, charlie_shift, delta_shift]
  end
end
