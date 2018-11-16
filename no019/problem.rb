require 'date'

def count_sunday(start_year, start_month, end_year, end_month)
  Date.new(start_year, start_month).upto(Date.new(end_year, end_month)).select { |day| day.mday == 1 }.count
end
