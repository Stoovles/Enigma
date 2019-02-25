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

#helpful
#.mon => returns month
#.day => returns day
#.year => returns year.last(2)





end
