require 'prime'
puts Prime.prime_division(600_851_475_143).map(&:first).max
