require 'minitest/autorun'
require './no017/problem'

require 'minitest/reporters'
Minitest::Reporters.use!

class ProblemTest < Minitest::Test
  def test_problem
    assert_equal 'one', 1.to_l
    assert_equal 3, 1.to_l.size
    assert_equal 'three', 3.to_l
    assert_equal 5, 3.to_l.size
  end
end
