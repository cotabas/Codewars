def is_triangle(a,b,c)
  a + b <= c || b + c <= a || a + c <= b ? false : true
end
