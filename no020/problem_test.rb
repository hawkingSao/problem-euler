require 'minitest/autorun'
require './problem'

require 'minitest/reporters'
Minitest::Reporters.use!

class ProblemTest < Minitest::Test
  def test_factorial_digit_sum
    assert_equal 1, factorial_digit_sum(10)
  end
end
