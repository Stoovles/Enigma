require './test/test_helper'
require './lib/key_generator'

class KeyGeneratorTest < Minitest::Test

  def test_it_exists
    key_generator = KeyGenerator.new

    assert_instance_of KeyGenerator, key_generator
  end

  def test_it_can_return_random_number_1_to_99999
    key_generator = KeyGenerator.new
    random_number = key_generator.random_number_1_to_99999

    assert_equal true, (1..99999).include?(random_number)
  end

  def test_it_can_pad_random_number
    key_generator = KeyGenerator.new
    random_number = key_generator.random_number_1_to_99999
    padded_random_number = key_generator.pad_random_number(random_number)

    assert_equal 5, padded_random_number.length
    assert_equal true, padded_random_number.include?(random_number.to_s)
  end

  def test_it_can_cons_random_number
    skip

  end

end
