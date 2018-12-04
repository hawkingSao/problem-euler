# frozen_string_literal: true

require 'minitest/autorun'
require './problem'

require 'minitest/reporters'
Minitest::Reporters.use!

class ProblemTest < Minitest::Test
  def test_sorted_names_array
    assert_equal 28, 28.sum_of_proper_divisors
    assert_equal false, 28.abundant?
    assert_equal 16, 12.sum_of_proper_divisors
    assert_equal true, 12.abundant?
    assert_equal 1, 1.sum_of_proper_divisors
  end

  def test_answer_method
    sum = answer(1, 23)
    assert_equal sum, answer(1, 24)
  end
end
