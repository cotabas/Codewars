def find_next_square(sq)
  ssq = Math.sqrt(sq)
  ssq = (ssq + 1) * (ssq + 1)
  return ssq == ssq.to_i ? ssq : -1
end
