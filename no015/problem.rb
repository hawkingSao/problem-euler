# frozen_string_literal: true

def lattice_path_roots(lattice_number:)
  total = lattice_number * 2
  n = ((total - lattice_number + 1)..total).inject(:*)
  r = (1..lattice_number).inject(:*)
  n / r
end

puts lattice_path_roots(lattice_number: 20)
