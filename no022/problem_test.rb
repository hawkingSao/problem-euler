# frozen_string_literal: true

require 'minitest/autorun'
require './problem'

require 'minitest/reporters'
Minitest::Reporters.use!

class ProblemTest < Minitest::Test
  def test_sorted_names_array
    assert_equal 'AARON', names.first
    assert_equal 'ZULMA', names.last
    assert_equal 5163, names.size
  end

  def test_score_of_colin
    assert_equal 937, names.index('COLIN')
    assert_equal 49_714, score_of_name('COLIN', 938)
  end
end
