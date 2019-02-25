class EncryptHash

  attr_reader :key_array,
              :date_array

  def initialize(key_array, date_array)
    @key_array = key_array
    @date_array = date_array
  end

  def compile_hash
    int_key_array = @key_array.map {|str_num| str_num.to_i}
    int_date_array = @date_array.map {|str_num| str_num.to_i}
    values = [int_key_array, int_date_array].transpose.map {|x| x.reduce(:+)}
    keys = [:A, :B, :C, :D]
    Hash[keys.zip(values)]
  end
  
end
