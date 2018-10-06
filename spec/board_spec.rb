require_relative '../board'

describe "Board" do

  board = Board.new

  it "a board is created at the start of a game" do
    expect(board).to be_instance_of(Board)
  end

  describe "#grid" do
    it "can create a 2D array" do
      expect(board.grid).to eq([[0,0,0,0,0],
                                [0,0,0,0,0],
                                [0,0,0,0,0],
                                [0,0,0,0,0],
                                [0,0,0,0,0]])
    end
  end
end
