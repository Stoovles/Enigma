require './test/test_helper'
require './lib/enigma'

class EnigmaTest < Minitest::Test

  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end

  def test_it_can_encrypt_with_given_key_and_date
    enigma = Enigma.new

    expected = {
    encryption: "keder ohulw",
    key: "02715",
    date: "040895"
    }

    assert_equal expected, enigma.encrypt("hello world", "02715", "040895")
  end

  def test_it_can_decrypt_with_given_key_and_date
    skip
    enigma = Enigma.new

  end

  def test_it_can_encrypt_with_given_key_and_todays_date
    OffsetGenerator.stubs(:current_ordinal_date).returns("022519")
    enigma = Enigma.new
    expected = {
      encryption: "ohhavcsdyo ",
      key: "02715",
      date: "022519"
    }
    assert_equal expected, enigma.encrypt("hello world", "02715")
  end

  def test_it_can_decrypt_with_given_key_and_todays_date
    skip
    enigma = Enigma.new

  end

  def test_it_can_encrypt_with_random_key_and_todays_date
    skip
    enigma = Enigma.new


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
    enigma = Enigma.new
    OffsetGenerator.stubs(:current_date).returns(Date.new(2019,2,25))
    current_date = enigma.current_ordinal_date
    assert_equal 6, current_date.length
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
    OffsetGenerator.stubs(:current_ordinal_date).returns("022519")
    offsets = enigma.offsets(enigma.current_ordinal_date)

    assert_equal 4, offsets.count
    assert_equal ["5", "3", "6", "1"], offsets
  end
end
