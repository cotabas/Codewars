def who_is_winner(pieces_position_list)
  board = Array.new(7, '')

  pieces_position_list.each do |move| 
    board[move.split('')[0].ord - 65] += 'y' if move.split('_')[1] == "Yellow"
    board[move.split('')[0].ord - 65] += 'r' if move.split('_')[1] == "Red"
    
    return "Yellow" if horizontal_check(board, 'y') || vertical_check(board, 'y') || diag_check(board, 'y')
    return "Red" if horizontal_check(board, 'r') || vertical_check(board, 'r') || diag_check(board, 'r')
    
  end
 "Draw"
end

def horizontal_check(board, color)
  count = 0
  6.times do |i|
    count = 0
    board.each do |col|
      count = col[i] == color ? count + 1 : 0
      return true if count == 4
    end
  end
  false
end

def vertical_check(board, color)
  count = 0 
  board.each do |col|
    count = 0
    6.times do |i|
      count = col[i] == color ? count + 1 : 0
      return true if count == 4
    end
  end
  false
end
  
def diag_check(board, color)
  count = 0
  3.times do |row|
    4.times do |col|
      count = 0
      count = board[col][row] == color ? count + 1 : 0
      count = board[col + 1][row + 1] == color ? count + 1 : 0
      count = board[col + 2][row + 2] == color ? count + 1 : 0
      count = board[col + 3][row + 3] == color ? count + 1 : 0
      return true if count == 4
    end
  end
  false
end
