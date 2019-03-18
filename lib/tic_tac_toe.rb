# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # top row win
  [3,4,5], # middle row win
  [6,7,8], # bottom row win
  [0,3,6], # left column win
  [1,4,7], # middle column win
  [2,5,8], # right column win
  [0,4,8], # left diagonal win
  [2,4,6], # right diagonal win
]

def display_board(board)
separator = "|"
lines = "-----------"

puts " #{board[0]} #{separator} #{board[1]} #{separator} #{board[2]} "
puts "#{lines}"
puts " #{board[3]} #{separator} #{board[4]} #{separator} #{board[5]} "
puts "#{lines}"
puts " #{board[6]} #{separator} #{board[7]} #{separator} #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(user_input)
 converted_input = user_input.to_i
 converted_input = converted_input - 1
end

def move( board, index, character)
  board[index]= character
  return board
end

def position_taken?(board, index)
  ! (board[index] ==  " " || board[index] == "" || board[index] == nil)
  end

  # code your #valid_move? method here
def valid_move?(board, index)
(board[index] ==  " " || board[index] == "" || board[index] == nil) && index.between?(0,8)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(index)
  else
    turn
  end
  display_board
end
