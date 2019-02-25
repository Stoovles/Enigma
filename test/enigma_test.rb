require './test/test_helper'

class EnigmaTest < Minitest::Test
  def setup

  end


  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_it_can_return_random_number_1_to_99999


    assert_equal #####, .random_number_1_to_99999
  end

  def test_it_can_pad_random_number


    assert_equal #####, .pad_random_number
  end

  def test_it_can_return_current_date


    assert_equal "current_date.example", .current_date
  end

  def test_it_can_return_current_date_formatted_to_integers

    assert_equal ######, .current_date_to_i(current_date)
  end

  def test_it_can_square_formatted_date


    assert_equal ###########, .square(######)
  end

  def test_it_can_return_last_four_digits_of_squared_date

    assert_equal ####, .last_four_digits(#################)
  end

end
