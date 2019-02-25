class KeyGenerator

  def initialize
  end

  def random_number_1_to_99999
    1 + Random.rand(99999)
  end

  def pad_random_number(random_number)
    rand_num_to_s = random_number.to_s
    rand_num_to_s.rjust(5, '0')
  end
end
