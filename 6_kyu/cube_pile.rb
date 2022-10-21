def find_nb(m, sum = 0, n = 0)  
  while sum < m
    n += 1
    sum += n ** 3  
  end
  sum == m ? n : -1
  
#   sum > m ? -1 : (sum == m ? n : find_nb(m, sum + ((n + 1) ** 3), n + 1))
#   too deep!?
end
