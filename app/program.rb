def A(x, y)
  raise ArgumentError, 'x and y must be >= 0' if x < 0 || y < 0
  return y + 1 if x == 0
  return A(x - 1, 1) if y == 0
  return A(x - 1, A(x, y - 1))
end

def prime?(n)
  return false if !(n.is_a? Integer) || n < 2
  (2..Math.sqrt(n)).each do |i|
    return false if n % i == 0
  end
  return true
end
