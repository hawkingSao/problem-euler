require 'minitest/autorun'
require './problem'

require 'minitest/reporters'
Minitest::Reporters.use!

class ProblemTest < Minitest::Test
  def test_count_sunday
    assert_equal 0, count_sunday(1900, 1, 1900, 1)
    assert_equal 2, count_sunday(2018, 1, 2018, 12)
  end
end
