require 'minitest/autorun'
require './no016/problem'

class ProblemTest < Minitest::Test
  def test_problem
    assert_equal 26, power_digit_sum(number: 2, index: 15)
  end
end
