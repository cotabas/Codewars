def score( dice )
  return 1000 + ((dice.count(1) - 3) * 100) + (dice.count(5) * 50) if dice.count(1) >= 3
  
  return 500  + (dice.count(1) * 100) + ((dice.count(5) - 3) * 50) if dice.count(5) >= 3
  
  7.times { |count| return count * 100 + (dice.count(1) * 100) + (dice.count(5) * 50) if dice.count(count) >= 3 }
  
  (dice.count(1) * 100) + (dice.count(5) * 50)
end
