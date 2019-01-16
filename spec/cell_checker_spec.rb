require "cell_checker"

describe "CellChecker" do

  before(:each) do
    @test_frame_one = [[" "," "," "," "," "],
                       [" "," "," "," "," "],
                       [" ","█"," ","█"," "],
                       [" "," "," "," "," "],
                       [" "," "," "," "," "]]

    @test_frame_two = [[" "," "," "," "," "],
                       [" "," ","█"," "," "],
                       [" ","█","█","█"," "],
                       [" "," ","█"," "," "],
                       [" "," "," "," "," "]]

    @cell_checker = CellChecker.new
  end

  it "a cell_checker can be created" do
    expect(@cell_checker).to be_instance_of(CellChecker)
  end

  describe "#create_frame" do

    it "can change a 1 to a 0 if less than two 1's surround it" do
      expect(@cell_checker.create_frame(@test_frame_one)).to eq([[" "," "," "," "," "],
                                                                 [" "," "," "," "," "],
                                                                 [" "," "," "," "," "],
                                                                 [" "," "," "," "," "],
                                                                 [" "," "," "," "," "]])
    end

    it "can change a 0 to a 1 if exactly three 1's surround it" do
      expect(@cell_checker.create_frame(@test_frame_two)).to eq([[" "," "," "," "," "],
                                                                 [" ","█","█","█"," "],
                                                                 [" ","█"," ","█"," "],
                                                                 [" ","█","█","█"," "],
                                                                 [" "," "," "," "," "]])
    end
  end
end
