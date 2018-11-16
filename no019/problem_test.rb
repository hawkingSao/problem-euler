require 'minitest/autorun'
require './problem'

require 'minitest/reporters'
Minitest::Reporters.use!

class ProblemTest < Minitest::Test
  def test_path_array
    assert_equal 1, count_sunday(1900, 1, 1900, 1)
    assert_equal 335, count_sunday(1900, 1, 1900, 12)
  end
end
