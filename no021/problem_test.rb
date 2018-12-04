# frozen_string_literal: true

require 'minitest/autorun'
require './problem'

require 'minitest/reporters'
Minitest::Reporters.use!

class ProblemTest < Minitest::Test
  def test_sum_of_proper_divisors
    assert_equal 284, d(220)
    assert_equal 220, d(284)
    assert_equal 1, d(1)
  end

  def test_augment_class_is_not_integer
    e = assert_raises RuntimeError do
      d(6.5)
    end
    assert_equal '引数が整数ではない', e.message

    e = assert_raises RuntimeError do
      d('テスト')
    end
    assert_equal '引数が整数ではない', e.message
  end

  def test_amicable
    assert_equal true, amicable?(220, 284)
    assert_equal false, amicable?(220, 255)
    assert_equal true, amicable?(220, d(220))
    assert_equal false, amicable?(5, d(5))
  end
end
