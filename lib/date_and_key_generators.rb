module Generators
  def current_date
    Time.now.strftime("%d%m%y")
  end

  def random_key_generator
    "%05d" % rand(10**5)
  end

end
