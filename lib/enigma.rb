class Enigma

  def initialize
  end

  def encrypt(message, key = random_key, date = current_date_offset)
    # The encrypt method takes a message String as an argument.
    # It can optionally take a Key and Date as arguments to use for encryption.
    # If the key is not included, generate a random key.
    # If the date is not included, use today’s date.

    # The encrypt method returns a hash with three keys:
    #
    # :encryption => the encrypted String
    # :key => the key used for encryption as a String
    # :date => the date used for encryption as a String in the form DDMMYY
  end

  def decrypt(ciphertext, key, date = current_date_offset)
    # The decrypt method returns a hash with three keys:
    #
    # :decryption => the decrypted String
    # :key => the key used for decryption as a String
    # :date => the date used for decryption as a String in the form DDMMYY
  end

  def random_key

  end

  def current_date_offset

  end


end