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



end
