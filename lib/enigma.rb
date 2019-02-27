require './lib/key_generator'
require './lib/offset_generator'
require './lib/encrypt_hash'

class Enigma
  include KeyGenerator
  include OffsetGenerator

  def initialize
  end

  def encrypt(message, key = random_and_pad, date = current_ordinal_date)
    encrypt_hash = EncryptHash.new(convert_number_to_consecutive_array(key), offsets(date), message)
    encrypt_return_hash = {
      encryption: encrypt_hash.encrypt_message,
      key: key,
      date: date
    }
  end

  def decrypt(ciphertext, key, date = current_ordinal_date)
    decrypt_hash = EncryptHash.new(convert_number_to_consecutive_array(key), offsets(date), ciphertext)
    decrypt_return_hash = {
      decryption: decrypt_hash.encrypt_message(false),
      key: key,
      date: date
    }
  end



end
