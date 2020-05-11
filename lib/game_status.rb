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
  WIN_COMBINATIONS.each do |win_combo|
    index1 = win_combo[0]
    index2 = win_combo[1]
    index3 = win_combo[2]

    position1 = board[index1]
    position2 = board[index2]
    position3 = board[index3]

    array = [position1, position2, position3]

    if array == ["X", "X", "X"] || array == ["O", "O", "O"]
      return win_combo
    else
      false
    end
  end
end

board = ["", "", "", "X", "X", "X", "X", "X", "X"]
puts won?(board)
