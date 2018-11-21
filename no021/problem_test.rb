require 'minitest/autorun'
require './problem'

require 'minitest/reporters'
Minitest::Reporters.use!

class ProblemTest < Minitest::Test
  def test_sum_of_proper_divisors
    assert_equal 284, d(220)
    assert_equal 220, d(284)
  end

  def test_augument_class_is_not_integer
    e = assert_raises RuntimeError do
      d(6.5)
    end
    assert_equal '引数が整数ではない', e.message

    e = assert_raises RuntimeError do
      d('テスト')
    end
    assert_equal '引数が整数ではない', e.message
  end
end
