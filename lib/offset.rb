require_relative 'date_and_key_generators'

class OffSet
include Generators
attr_reader :date
  def initialize(date = current_date)
    @date = date
  end
  def square_date
    (@date.to_i * @date.to_i).to_s
  end

  def square_date_last_four
    square_date[-4..-1]
  end

  def split_last_four
    square_date_last_four.chars.map { |num| num }
  end
end
