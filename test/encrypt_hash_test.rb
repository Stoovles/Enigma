require './test/test_helper'
require './lib/enigma'
require './lib/encrypt_hash'

class EnigmaTest < Minitest::Test

  def test_it_exists
    encrypt_hash = EncryptHash.new([], [], "hello world")

    assert_instance_of EncryptHash, encrypt_hash
  end

  def test_it_can_compile_hash
    encrypt_hash = EncryptHash.new(["02", "27", "71", "15"], ["1", "0", "2", "5"], "hello world")

    expected = {
      A: 3,
      B: 27,
      C: 73,
      D: 20
    }

    assert_equal expected, encrypt_hash.compile_hash
  end

  def test_it_can_encrypt_message
    encrypt_hash = EncryptHash.new(["02", "27", "71", "15"], ["1", "0", "2", "5"], "hello world")

    assert_equal "keder ohulw", encrypt_hash.encrypt_message
  end
end
