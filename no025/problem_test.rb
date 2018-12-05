# frozen_string_literal: true

require 'minitest/autorun'
require './problem'

require 'minitest/reporters'
Minitest::Reporters.use!

class ProblemTest < Minitest::Test
  def test_nth_digit_fibonacci_number
    assert_equal 12, nth_digit_fibonacci_number(3)
  end
end
