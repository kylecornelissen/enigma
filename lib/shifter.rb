require_relative 'date_today'

class Shifter
  include DateToday
  attr_reader :key_gen,
              :offset,
              :characters,
              :shift_keys
  def initialize(random_key = "%05d" % rand(10**5), date = current_date)
    @key_gen = KeyGen.new(random_key)
    @offset = OffSet.new(date)
    @characters = ("a".."z").to_a << " "
    @shift_keys = []
  end

  def key_shifter(split_keys, split_last_four)
    alfa_shift = split_keys[0].to_i + split_last_four[0].to_i
    bravo_shift = split_keys[1].to_i + split_last_four[1].to_i
    charlie_shift = split_keys[2].to_i + split_last_four[2].to_i
    delta_shift = split_keys[3].to_i + split_last_four[3].to_i
    @shift_keys = [alfa_shift, bravo_shift, charlie_shift, delta_shift]
  end

  def scramble_message(message)
    key_shifter(@key_gen.split_keys, @offset.split_last_four)
    message.downcase.chars.map do |letter|
      @shift_keys.rotate!
      if @characters.include?(letter)
        @characters.rotate! until letter == @characters.first
        @characters.rotate!(@shift_keys[3]).first
      else
        letter
      end
    end.join
  end


end
