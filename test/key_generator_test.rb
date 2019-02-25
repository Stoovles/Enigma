require './test/test_helper'

class KeyGeneratorTest < Minitest::Test
  def setup

  end

  def test_it_exists
    key_generator = KeyGenerator.new

    assert_instance_of KeyGenerator, key_generator
  end

  def test_it_can_return_random_number_1_to_99999


    assert_equal #####, .random_number_1_to_99999
  end

  def test_it_can_pad_random_number


    assert_equal #####, .pad_random_number
  end

end
