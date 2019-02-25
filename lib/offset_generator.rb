require 'date'
module OffsetGenerator

  def current_ordinal_date
    ordinal_date = []
    today = Date.today
    ordinal_date << today.mon
    ordinal_date << today.day
    ordinal_date << today.year.to_s[-2..-1].to_i
  end

  def squared(date)
    date * date
  end

  def last_four_digits(number)
    int_array = []
    number = number.to_s
    number = number[-4..-1]
  end

  def string_of_numbers_to_array(string)
    int_array = []
    string.each_char {|int| int_array << int}
    int_array
  end

end
