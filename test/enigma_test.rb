require './test/test_helper'

class EnigmaTest < Minitest::Test
  def setup

  end

  def test_it_exists
    enigma = Enigma.new

    assert_instance_of Enigma, enigma
  end





end
