require 'game'

describe "Game" do

  before(:each) do
    @game = Game.new
  end

  it "a game can be created" do
    expect(@game).to be_instance_of(Game)
  end

end
