require 'board'

describe "Board" do

  before(:each) do
    @board = Board.new
  end

  it "a board is created at the start of a game" do
    expect(@board).to be_instance_of(Board)
  end

  describe "#grid" do
    it "can create a 2D array" do
      allow(Kernel).to receive(:rand).and_return(0)
      expect(@board.create_grid).to eq([[" "," "," "," "," "],
                                        [" "," "," "," "," "],
                                        [" "," "," "," "," "],
                                        [" "," "," "," "," "],
                                        [" "," "," "," "," "]])
    end

    it "can populate the 2D array with random 1 or 0" do
      srand 1234
      expect(@board.create_grid).to eq([["█","█"," ","█"," "],
                                        [" "," ","█","█","█"],
                                        ["█","█"," "," ","█"],
                                        [" "," "," "," "," "],
                                        [" "," "," "," ","█"]])
      srand
    end
  end
end
