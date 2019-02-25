module KeyGenerator

  def random_number_1_to_99999
    1 + Random.rand(99999)
  end

  def pad_random_number(random_number)
    rand_num_to_s = random_number.to_s
    rand_num_to_s.rjust(5, '0')
  end

  def cons_padded_number(padded_number)
    cons_array = []
    char_array = []
    padded_number.each_char {|char| char_array << char}
    int_array = char_array.map {|char| char.to_i}
    int_array.each_cons(2) {|int| cons_array << int}
    cons_array = cons_array.map {|touple| touple.join}
  end

  def random_and_pad
    random_num = random_number_1_to_99999
    pad_random_number(random_num)
  end
end
