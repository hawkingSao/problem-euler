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
    assert_equal 'twenty-one', 21.to_l
    assert_equal 'ninety-nine', 99.to_l
    assert_equal 9, number_letter_counts(from: 21, to: 21)
    assert_equal 'one hundred and one', 101.to_l
    assert_equal 'two hundred', 200.to_l
    assert_equal 16, number_letter_counts(from: 101, to: 101)
  end
end
