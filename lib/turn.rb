<<<<<<< HEAD
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, token = "X")
    display_board(board)
  else
   turn(board)
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def input_to_index(user_input)
  user_input = user_input.to_i
  index = user_input - 1
=======
def turn(input)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input - 1
  if (index >= 1 && index <= 9)
    display_board(board)
  else
    try_again(input)
    until (index >= 1 && index <= 9)
    end
  end
end


def valid_move_police(valid_move, display_board)
  if valid_move?(board, index) == true
    display_board(board, index)
  else 
    until valid_move?(board, index) == true
    try_again(input)
    end
  end
>>>>>>> c87b88a9ace20ed25e921ac157953b6570595d22
end

def try_again(input)
  input = gets.strip
<<<<<<< HEAD
  input = input.to_i
=======
>>>>>>> c87b88a9ace20ed25e921ac157953b6570595d22
  index = input - 1
end



# code your #valid_move? method here

<<<<<<< HEAD

=======
>>>>>>> c87b88a9ace20ed25e921ac157953b6570595d22
def valid_move?(board, index)
  if ((position_taken?(board, index) == false) && (index.between?(0,8) == true))
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.


def position_taken?(board, index)
  if (board[index] == "X" || board[index] ==  "O")
    return true
  elsif (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
