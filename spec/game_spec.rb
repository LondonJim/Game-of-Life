require 'game'

describe "Game" do

  before(:each) do
    @board = double("Board")
    @cell_checker = double("CellChecker")
    @display = double("Display")
    allow(@board).to receive(:create_grid).and_return([[0,0,0], [0,0,0], [0,0,0]])
    allow(@cell_checker).to receive(:create_frame)
    allow(@cell_checker).to receive(:cycle_through).and_return(@board.create_grid)
    allow(@display).to receive(:frame)
    @game = Game.new(@board, @cell_checker, @display)
  end

  it "a game can be created" do
    expect(@game).to be_instance_of(Game)
  end

  describe "#play" do
    it "can end a loop with a space bar key press" do
      allow(STDIN).to receive(:read_nonblock) { ' ' }
      expect(@game.play(3, 3)).to eq("game over")
    end
  end

end
