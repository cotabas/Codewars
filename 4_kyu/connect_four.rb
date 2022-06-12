def who_is_winner(pieces_position_list)

  yellow = []
  yellow_vert = []
  red = []
  red_vert = []
  
  board = []
  7.times do 
    board << ' '
    yellow << 0
    yellow_vert << 0
    red << 0
    red_vert << 0
  end
  
  pieces_position_list.each do |move|
 
    yellow[move.split('')[0].ord - 65] = 1 if move.split('_')[1] == "Yellow"
    yellow_vert[move.split('')[0].ord - 65] += 1 if move.split('_')[1] == "Yellow"
    
    red[move.split('')[0].ord - 65] = 1 if move.split('_')[1] == "Red"
    red_vert[move.split('')[0].ord - 65] += 1 if move.split('_')[1] == "Red"
    
    board[move.split('')[0].ord - 65] += 'y' if move.split('_')[1] == "Yellow"
    board[move.split('')[0].ord - 65] += 'r' if move.split('_')[1] == "Red"
  
    
#     return "Yellow" if yellow.join.include?('1111') || yellow_vert.any? { |col| col == 4 }
#     return "Red" if red.join.include?('1111') || red_vert.any? { |col| col == 4 }

  end
  p board
#   "Draw"
end
