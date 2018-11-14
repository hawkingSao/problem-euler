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
    assert_equal 19, number_letter_counts(from: 1, to: 5)
    assert_equal 112, number_letter_counts(from: 1, to: 20)
    assert_equal Integer, number_letter_counts(from: 1, to: 99).class
  end
end
