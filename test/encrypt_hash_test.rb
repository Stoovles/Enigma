require './test/test_helper'
require './lib/enigma'
require './lib/encrypt_hash'

class EnigmaTest < Minitest::Test

  def test_it_exists
    encrypt_hash = EncryptHash.new([], [])

    assert_instance_of EncryptHash, encrypt_hash
  end

  def test_it_can_compile_hash
    encrypt_hash = EncryptHash.new([], [])



  end
end
