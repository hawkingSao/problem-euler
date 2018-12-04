# frozen_string_literal: true

require 'minitest/autorun'
require './problem'

require 'minitest/reporters'
Minitest::Reporters.use!

class ProblemTest < Minitest::Test
  def test_path_array
    assert_equal 15, path_array.size
    assert_equal 15, path_array.first.size
  end
end
