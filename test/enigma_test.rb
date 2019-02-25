require './test/test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  ##################KEYGENERATOR TEST###############
  def test_it_can_return_random_number_1_to_99999
    enigma = Enigma.new
    random_number = enigma.random_number_1_to_99999

    assert_equal true, (1..99999).include?(random_number)
  end

  def test_it_can_pad_number
    enigma = Enigma.new
    padded_number = enigma.pad_random_number(4456)

    assert_equal "04456", padded_number
  end

  def test_it_can_pad_random_number
    enigma = Enigma.new
    random_number = enigma.random_number_1_to_99999
    padded_random_number = enigma.pad_random_number(random_number)

    assert_equal 5, padded_random_number.length
    assert_equal true, padded_random_number.include?(random_number.to_s)
  end

  def test_it_can_cons_number
    enigma = Enigma.new
    cons_array = enigma.cons_padded_number("04456")

    assert_equal ["04", "44", "45", "56"], cons_array
  end

  def test_it_can_cons_random_number
    enigma = Enigma.new
    random_number = enigma.random_number_1_to_99999
    padded_random_number = enigma.pad_random_number(random_number)
    cons_array = enigma.cons_padded_number(padded_random_number)

    assert_equal 4, cons_array.length
  end

  ##################OFFSETGENERATOR TEST###############
  def test_it_can_return_current_ordinal_date
    skip
    enigma = Enigma.new
    current_date = enigma.current_ordinal_date
    assert_equal #use mocks/stubs here
  end

  def test_it_can_square
    enigma = Enigma.new

    assert_equal 16, enigma.squared(4)
  end

  def test_it_can_return_last_four_digits
    enigma = Enigma.new

    assert_equal "0444", enigma.last_four_digits(11110444)
  end

  def test_it_can_translate_string_to_array
    enigma = Enigma.new

    assert_equal ["0", "4", "4", "4"], enigma.string_of_numbers_to_array("0444")
  end

  def test_it_can_return_offsets
    enigma = Enigma.new
    offsets = enigma.offsets
    #integration test
    #mocks/stubs
    assert_equal 4, offsets.count

  end
end
