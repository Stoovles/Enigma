class EncryptHash

  attr_reader :key_array,
              :date_array,
              :character_set,
              :message

  def initialize(key_array, date_array, message)
    @key_array = key_array
    @date_array = date_array
    @character_set = ["a", "b", "c", "d", "e",
    "f", "g", "h", "i", "j", "k", "l", "m", "n",
    "o", "p", "q", "r", "s", "t", "u", "v", "w",
    "x", "y", "z", " "]
    @message = message
  end

  def compile_hash
    int_key_array = @key_array.map {|str_num| str_num.to_i}
    int_date_array = @date_array.map {|str_num| str_num.to_i}
    values = [int_key_array, int_date_array].transpose.map {|x| x.reduce(:+)}
    keys = [:A, :B, :C, :D]
    Hash[keys.zip(values)]
  end

  def encrypt_message(encrypt = true)
    message_array = []
    @message.each_char {|char| message_array << char}
    message_array.each_index do |index|
      conditional_shift(encrypt, index, message_array)
    end
    @message
  end

  def shift(encrypt, symbol, index, message_array)
    cipher = {}
    compile_hash.map do |key, value|
      cipher[key] = (value % 27)
    end
    if encrypt == true
      @message[index] = @character_set[(@character_set.index(@message[index]) + cipher[symbol]) % 27]
    else @message[index] = @character_set.reverse[(@character_set.reverse.index(@message[index]) + cipher[symbol]) % 27]
    end
  end

  def conditional_shift(encrypt, index, message_array)
    if index % 4 == 0
      shift(encrypt, :A, index, message_array)
    elsif index % 4 == 1
      shift(encrypt, :B, index, message_array)
    elsif index % 4 == 2
      shift(encrypt, :C, index, message_array)
    else shift(encrypt, :D, index, message_array)
    end
  end

end
