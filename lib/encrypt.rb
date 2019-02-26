require 'pry'
require './lib/enigma'
require './lib/encrypt_hash'

message_file = File.open(ARGV[0], "r")
encrypted_file = File.open(ARGV[1], "w")
message = message_file.read.gsub("\n", '')
enigma = Enigma.new
encrypt_hash = enigma.encrypt(message)
encrypted_file.write("#{encrypt_hash[:encryption]}")
puts "Created #{ARGV[1]} with the key #{encrypt_hash[:key]} and date #{encrypt_hash[:date]}"
