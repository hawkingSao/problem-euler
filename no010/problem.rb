# frozen_string_literal: true

require 'prime'
puts Prime.each(2_000_000).inject(:+)
