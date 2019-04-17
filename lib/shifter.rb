require_relative 'date_and_key_generators'

class Shifter
  include Generators
  attr_reader :key_gen,
              :offset,
              :characters,
              :shift_keys
              
  def initialize(key = random_key_generator, date = current_date)
    @key_gen = KeyGen.new(key)
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

  def shift_letters(message, crypt_type)
    key_shifter(@key_gen.split_keys, @offset.split_last_four)
    message.downcase.chars.map do |letter|
      if crypt_type == "encrypt"; scramble_letter(letter)
      elsif crypt_type == "decrypt"; unscramble_letter(letter)
      end
    end.join
  end

  def scramble_letter(letter)
    if @characters.include?(letter)
      @shift_keys.rotate!
      @characters.rotate! until letter == @characters.first
      @characters.rotate!(@shift_keys[3]).first
    else
      letter
    end
  end

  def unscramble_letter(letter)
    if @characters.include?(letter)
      @shift_keys.rotate!
      @characters.rotate! until letter == @characters.first
      @characters.rotate!(-@shift_keys[3]).first
    else
      letter
    end
  end
end
