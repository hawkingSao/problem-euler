=begin
問題文

A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

a2 + b2 = c2
For example, 32 + 42 = 9 + 16 = 25 = 52.

There exists exactly one Pythagorean triplet for which a + b + c = 1000.
Find the product abc.
=end

start_time = Time.now
array = []
1.upto(998) do |a|
  (a + 1).upto(998) do |b|
    c = 1000 - (a + b)
    if a ** 2 + b ** 2 == c ** 2
        array.push(a, b, c)
    end
  end
end
p array
puts array.inject(:*)
puts "処理速度 #{Time.now - start_time}s"
#=> 31875000
