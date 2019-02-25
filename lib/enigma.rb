require './lib/key_generator'
require './lib/offset_generator'
require './lib/encrypt_hash'

class Enigma
  include KeyGenerator
  include OffsetGenerator

  def initialize
  end

  def encrypt(message, key = random_and_pad, date = current_ordinal_date)
    encrypt_hash = EncryptHash.new(cons_padded_number(key), offsets(date), message)
    encrypt_return_hash = {
      encryption: encrypt_hash.encrypt_message,
      key: key,
      date: date
    }
  end

  def decrypt(ciphertext, key, date = current_date_offset)
    decrypt_hash = EncryptHash.new(cons_padded_number(key), offsets(date), message)
    decrypt_return_hash = {
      encryption: encrypt_hash.encrypt_message(false),
      key: key,
      date: date
    }
    # The decrypt method returns a hash with three keys:
    #
    # :decryption => the decrypted String
    # :key => the key used for decryption as a String
    # :date => the date used for decryption as a String in the form DDMMYY
  end



end
