require 'date'

def friday_13th(year)
  count = 0
  12.times do |month|
    thirteenth = Date.new(year, month + 1, 13)
    count += 1 if thirteenth.friday?
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2