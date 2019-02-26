require './test/test_helper'
require './lib/enigma'
require './lib/encrypt_hash'

class EnigmaTest < Minitest::Test

  def test_it_exists
    encrypt_hash = EncryptHash.new([], [], "hello world")

    assert_instance_of EncryptHash, encrypt_hash
  end

  def test_it_has_attributes
    encrypt_hash = EncryptHash.new(["02", "27", "71", "15"], ["1", "0", "2", "5"], "hello world")

    assert_equal ["02", "27", "71", "15"], encrypt_hash.key_array
    assert_equal ["1", "0", "2", "5"], encrypt_hash.date_array
    assert_equal "hello world", encrypt_hash.message
    expected = [
    "a", "b", "c", "d", "e",
    "f", "g", "h", "i", "j",
    "k", "l", "m", "n", "o",
    "p", "q", "r", "s", "t",
    "u", "v", "w", "x", "y",
    "z", " "
    ]
    assert_equal expected, encrypt_hash.character_set
  end

  def test_it_can_take_upcase
    encrypt_hash = EncryptHash.new(["02", "27", "71", "15"], ["1", "0", "2", "5"], "HELLO WORLD")

    assert_equal "hello world", encrypt_hash.message
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

  def test_it_can_encrypt_message_with_non_character_set
    encrypt_hash = EncryptHash.new(["02", "27", "71", "15"], ["1", "0", "2", "5"], "hello world!")

    assert_equal "keder ohulw!", encrypt_hash.encrypt_message
  end

  def test_it_can_shift_encrypt
    encrypt_hash = EncryptHash.new(["02", "27", "71", "15"], ["1", "0", "2", "5"], "hello world")

    assert_equal "k", encrypt_hash.shift(true, :A, 0, ["h"])
  end

  def test_it_can_shift_decrypt
    decrypt_hash = EncryptHash.new(["02", "27", "71", "15"], ["1", "0", "2", "5"], "keder ohulw")

    assert_equal "h", decrypt_hash.shift(false, :A, 0, ["k"])
  end
end
