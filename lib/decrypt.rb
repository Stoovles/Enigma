require 'pry'
require './lib/enigma'
require './lib/encrypt_hash'

encrypted_file = File.open(ARGV[0], "r")
decrypted_file = File.open(ARGV[1], "w")
message = encrypted_file.read
enigma = Enigma.new
decrypted_hash = enigma.decrypt(message)
