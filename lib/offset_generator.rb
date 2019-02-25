require 'date'
module OffsetGenerator

  def current_date
    Date.today
  end
  
  def current_ordinal_date
    ordinal_date = []
    today = current_date
    ordinal_date << today.mon.to_s.rjust(2, '0')
    ordinal_date << today.day.to_s.rjust(2, '0')
    ordinal_date << today.year.to_s[-2..-1].rjust(2, '0')
    ordinal_date.join
  end

  def squared(date)
    date.to_i * date.to_i
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

  def offsets(ordinal_date)
    squared_date = squared(ordinal_date)
    last_four_digits = last_four_digits(squared_date)
    string_of_numbers_to_array(last_four_digits)
  end

end
