board = ["" ,"" ,"" ,"" ,"" ,"" ,"" ,"" ,""]

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
def querydata(dispmsg)
  puts dispmsg
  gets.chomp.strip
end
def won(board, symbol)
  for win_combination in WIN_COMBINATIONS
  board_index_0 = board[win_combination[0]]
    board_index_1 = board[win_combination[1]]
    board_index_2 = board[win_combination[2]]

    if board_index_0 == symbol && board_index_1 == symbol && board_index_2 == symbol
      return true
    end
  end
  return false
end

puts "Welcome to rubys Tic-Tac-Toe !\n\n"

player1name = querydata("Enter Player 1's name:")
player2name = querydata("Enter Player 2's name:")

puts "\n#{player1name} will play with X and #{player2name} will play with O\n\n"
puts "Let's start!\n\n"

def full(board)

end

puts board.empty?
puts "board_length = " + board.length.to_s

while (true)

  # query players for moves
  # check if anyone has won ==> If yes break declaring the winner of the game
  # check if full(board) ==> If yes break declaring tie
end