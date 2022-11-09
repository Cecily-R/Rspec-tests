require 'gratitudes'

RSpec.describe "Gratitudes" do 
  it "returns an empty list gratitudes" do 
    gratitudes = Gratitudes.new
    expect(gratitudes.format).to eq "Be grateful for: " 
  end 

  it "adds a single inputted gratitude" do
    gratitudes = Gratitudes.new
    gratitudes = gratitudes.add("coffee")
    expect(gratitudes).to eq ["coffee"]
  end 

  it "formats single inputted gratitude" do 
    gratitudes = Gratitudes.new
    expect(gratitudes.format).to eq "Be grateful for: "
  end 

  it "returns a single inputted gratitude" do
    gratitudes = Gratitudes.new
    gratitudes.add("coffee")
    expect(gratitudes.format).to eq "Be grateful for: coffee"
   end 

  it "returns two inputted gratitudes" do 
    gratitudes = Gratitudes.new
    gratitudes.add("coffee")
    gratitudes.add("chocolate")
    expect(gratitudes.format).to eq "Be grateful for: coffee, chocolate"
  end 
end 