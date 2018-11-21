require 'minitest/autorun'
require './problem'

require 'minitest/reporters'
Minitest::Reporters.use!

class ProblemTest < Minitest::Test
  def test_sum_of_proper_divisors
    assert_equal 284, d(220)
  end
end
