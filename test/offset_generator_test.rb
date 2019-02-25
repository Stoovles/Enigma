require './test/test_helper'

class OffsetGeneratorTest < Minitest::Test
  def setup

  end

  def test_it_exists
    offset_generator = OffsetGenerator.new

    assert_instance_of OffsetGenerator, offset_generator
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
