require_relative 'date_and_key_generators'

class KeyGen
  include Generators
  attr_reader :key

  def initialize(key = random_key_generator)
    @key = key
  end

  def split_keys
    @key.chars.each_cons(2).flat_map { |x, y| x + y }
  end
end
