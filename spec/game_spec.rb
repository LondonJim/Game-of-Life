require 'game'

describe "Game" do

  before(:each) do
    board = double("Board")
    allow(board).to receive(:create_grid).and_return([[0,0,0], [0,0,0], [0,0,0]])
    @game = Game.new(board)
  end

  it "a game can be created" do
    expect(@game).to be_instance_of(Game)
  end

  describe "#play" do
    it "can create a grid board on instantiation" do
      expect(@game.play(3, 3)).to eq([[0,0,0],
                                      [0,0,0],
                                      [0,0,0]])
    end
  end



end
