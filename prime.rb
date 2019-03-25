# Add  code here!
def myMethod(integer)
  primes = (0..1000000).to_a
  primes[0] = primes[1] = nil
  
  counter = 0 
  primes.each do |p|
    next unless p 
    break if p*p > 1000000
    counter += 1
    (p*p).step(1000000,p) { |m| primes[m] = nil}
  end
  primes.compact
end

def prime?(integer)
  myMethod(integer).include?(integer)
end
puts prime?(4)
puts prime?(7)