=begin
問題文

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end

array = []
1.upto(998) do |l|
  (l + 1).upto(998) do |m|
    (m + 1).upto(998) do |n|
      if l + m + n == 1000 && l ** 2 + m ** 2 == n ** 2
        array.push(l, m, n)
      end
    end
  end
end
puts array.inject(:*)
#=> 31875000
