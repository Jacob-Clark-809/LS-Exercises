LOWER = 'a'..'z'
UPPER = 'A'..'Z'

def letter_case_count(str)
  scores = { lowercase: 0, uppercase: 0, neither: 0 }
  str.each_char do |char|
    if LOWER.include?(char)
      scores[:lowercase] += 1
    elsif UPPER.include?(char)
      scores[:uppercase] += 1
    else
      scores[:neither] += 1
    end
  end
  scores
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }