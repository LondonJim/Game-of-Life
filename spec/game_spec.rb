require 'game'

describe "Game" do

  before(:each) do
    @board = double("Board")
    @cell_checker = double("CellChecker")
    allow(@board).to receive(:create_grid).and_return([[0,0,0], [0,0,0], [0,0,0]])
    allow(@cell_checker).to receive(:create_frame).and_return(@board.create_grid)
    @game = Game.new(@board, @cell_checker)
  end

  it "a game can be created" do
    expect(@game).to be_instance_of(Game)
  end

  describe "#play" do
    it "can create a grid board" do
      expect(@game.play(3, 3)).to eq([[0,0,0],
                                      [0,0,0],
                                      [0,0,0]])
    end
  end

end
