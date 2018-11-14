class Integer
  def to_l
    case self
    when 1
    'one'
    when 2
    'two'
    when 3
    'three'
    when 4
    'four'
    when 5
    'five'
    when 6
    'six'
    when 7
    'seven'
    when 8
    'eight'
    when 9
    'nine'
    when 10
    'ten'
    when 11
    'eleven'
    when 12
    'twelve'
    when 13
    'thirteen'
    when 14
    'fourteen'
    when 15
    'fifteen'
    when 16
    'sixteen'
    when 17
    'seventeen'
    when 18
    'eighteen'
    when 19
    'nineteen'
    when 20
    'twenty'
    end
  end
end

def number_letter_counts(from:, to:)
  (from..to).map(&:to_l).map(&:size).inject(&:+)
end