require 'pry'
require './lib/enigma'
require './lib/encrypt_hash'

encrypted_file = File.open(ARGV[0], "r")
decrypted_file = File.open(ARGV[1], "w")
key = ARGV[2]
date = ARGV[3]
message = encrypted_file.read
enigma = Enigma.new
decrypted_hash = enigma.decrypt(message, key, date)
decrypted_file.write("#{decrypted_hash[:decryption]}")
puts "Created #{ARGV[1]} with the key #{decrypted_hash[:key]} and date #{decrypted_hash[:date]}"
