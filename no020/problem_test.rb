require 'minitest/autorun'
require './problem'

require 'minitest/reporters'
Minitest::Reporters.use!

class ProblemTest < Minitest::Test
  def test_factorial_digit_sum
    assert_equal 3628800, factorial_digit_sum(10)
    assert_equal 6, factorial_digit_sum(3)
    assert_equal 120, factorial_digit_sum(5)
  end
end
