require 'present'

RSpec.describe Present do

  it "wraps and unwraps the number of presentes inputted" do 
    present = Present.new
    present.wrap("tea")
    expect(present.unwrap).to eq "tea"
  end 

  context "no presents to unwrap" do 
    it "fails" do 
      present = Present.new
      expect { present.unwrap }.to raise_error "No contents have been wrapped."
    end 
  end

  context "no presents to wrap" do 
    it "fails" do
      present = Present.new
      present.wrap("tea")
      expect { present.wrap("tea").wrap() }.to raise_error "A contents has already been wrapped."
    end 
  end 
 
end