def factorial_digit_sum(number)
  number.downto(1).inject(&:*)
end
