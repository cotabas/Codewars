def rps(p1, p2)
  rps = ['rock', 'paper', 'scissors']
  p1win = [[0, 2], [1, 0], [2, 1]]
  converted_outcome = [rps.find_index(p1), rps.find_index(p2)]
  p1 == p2 ? "Draw!" : p1win.include?(converted_outcome) ? 'Player 1 won!' : 'Player 2 won!'
end
