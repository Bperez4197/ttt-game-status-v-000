# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]

def won?(board)
  combo = 0
  while combo < WIN_COMBINATIONS.length
    current_combo = WIN_COMBINATIONS[combo]
    win1 = current_combo.all? {|position| board[position] == "X"}
    win2 = current_combo.all? {|position| board[position] == "O"}
  if win1 || win2
      return current_combo
    else
    end
    combo += 1
  end
end

def full?(board)
 board.none? { |blank| blank == " " || blank.nil?}
 end

 def draw?(board)
   won?(board) == nil && full?(board) == true
 end

 def over?(board)
 draw?(board) || won?(board)
   end

 def winner(board)
   if won?(board) != nil
     winning_board = won?(board)
     return board[winning_board[0]]
   else
     nil
    end
 end
