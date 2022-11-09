require 'greet'

RSpec.describe "greet method" do 
  it "greets user" do 
    result = greet("Cecily")
    expect(result).to eq "Hello, Cecily!"
  end 
end 
