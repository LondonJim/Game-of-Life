require "cell_checker"

describe "CellChecker" do

  before(:each) do
    @cell_checker = CellChecker.new
  end

  it "a cell_checker can be created" do
    expect(@cell_checker).to be_instance_of(CellChecker)
  end

  describe "#create_frame" do

    it "can change a 1 to a 0 if less than two 1's surround it" do
      @mock_frame_one = [[0,0,0,0,0],
                         [0,0,1,0,0],
                         [0,0,0,0,0],
                         [0,0,1,1,0],
                         [0,0,0,0,0]]
      expect(@cell_checker.create_frame(@mock_frame_one)).to eq([[0,0,0,0,0],
                                                                 [0,0,0,0,0],
                                                                 [0,0,0,0,0],
                                                                 [0,0,0,0,0],
                                                                 [0,0,0,0,0]])
    end
  end
end
