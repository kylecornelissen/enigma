require_relative 'date_and_key_generators'

class KeyGen
  include Generators
  attr_reader :random_key

  def initialize(random_key = random_key_generator)
    @random_key = random_key
  end

  def split_keys
    @random_key.chars.each_cons(2).flat_map { |x, y| x + y }
  end





end
