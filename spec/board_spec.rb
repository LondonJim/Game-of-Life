require_relative '../board'

describe "Board" do

  before.each do
  board = Board.new
  end

  it "a board is created at the start of a game" do
    expect(board).to be_instance_of(Board)
  end

end
