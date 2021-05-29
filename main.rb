# frozen_string_literal: true

board = ['', '', '', '', '', '', '', '', '']

WIN_COMBINATIONS = [
  [0, 1, 2],
  [3, 4, 5],
  [6, 7, 8],
  [0, 3, 6],
  [1, 4, 7],
  [2, 5, 8],
  [0, 4, 8],
  [2, 4, 6]
].freeze
def querydata(dispmsg)
  puts dispmsg
  gets.chomp.strip
end

def display_board(board, symbol, position)
  board = board.map.with_index { |x, i| i == position ? symbol : x }
  puts '+---+---+---+'
  puts "| #{board[0]} | #{board[1]} | #{board[2]} |"
  puts '+---+---+---+'
  puts "| #{board[3]} | #{board[4]} | #{board[5]} |"
  puts '+---+---+---+'
  puts "| #{board[6]} | #{board[7]} | #{board[8]} |"
  puts "+---+---+---+ \n\n"
  board
end

def won(board, symbol)
  WIN_COMBINATIONS.each do |win_combination|
    board_index_0 = board[win_combination[0]]
    board_index_1 = board[win_combination[1]]
    board_index_2 = board[win_combination[2]]
    return true if board_index_0 == symbol && board_index_1 == symbol && board_index_2 == symbol
  end
  false
end

def full(board)
  board.all? { |e| e != '' }
end

puts "Welcome to rubys Tic-Tac-Toe !\n\n"

player1name = querydata("Enter Player 1's name:")
player2name = querydata("Enter Player 2's name:")

puts "\n#{player1name} will play with X and #{player2name} will play with O\n\n"
puts "Let's start!\n\n"

display_board(board, nil, nil)

while full(board) == false
  player1_move = querydata("It's #{player1name}'s turn!\n\nPlease select an available cell from the board (1-9)")
  board = display_board(board, 'X', player1_move.to_i - 1)
  if won(board, 'X')
    puts "Congratulations ! #{player1name} (X) has won the game !!"
    break
  elsif full(board)
    puts 'Break Tie'
    break
  end
  player2_move = querydata("It's #{player2name}'s turn!\n\nPlease select an available cell from the board (1-9)")
  board = display_board(board, 'O', player2_move.to_i - 1)
  if won(board, 'O')
    puts "Congratulations ! #{player2name} (O) has won the game !!"
    break
  elsif full(board)
    puts 'Break Tie'
    break
  end
  # query players for moves
  # check if anyone has won ==> If yes break declaring the winner of the game
  # check if full(board) ==> If yes break declaring tie
end
