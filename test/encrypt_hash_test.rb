require './test/test_helper'
require './lib/enigma'
reqiure './lib/encrypt_hash'

class EnigmaTest < Minitest::Test

  def test_it_exists
    encrypt_hash = EncryptHash.new(key_array, date_array)

    assert_instance_of EncryptHash, encrypt_hash
  end
