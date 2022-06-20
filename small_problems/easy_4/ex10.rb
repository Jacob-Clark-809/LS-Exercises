DIGITS = { 0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5',
           6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(int)
  str = ''
  int.digits.reverse.each do |digit|
    str << DIGITS[digit]
  end
  str
end

def signed_integer_to_string(int)
  if int > 0
    '+' + integer_to_string(int)
  elsif int < 0
    '-' + integer_to_string(-int)
  else
    '0'
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'