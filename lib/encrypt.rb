require 'pry'
require './lib/enigma'
require './lib/encrypt_hash'

message_file = File.open(ARGV[0], "r")
encrypted_file = File.open(ARGV[1], "w")
message = message_file.read.gsub("\n", '')

binding.pry
# (file_1, "r")
# messenger_file.read
# encrypted_file = File.open(file_2, "w")
