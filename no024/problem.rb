# frozen_string_literal: true

answer = (0..9).to_a.permutation.map(&:join)[999_999]
puts answer
