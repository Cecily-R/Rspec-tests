require 'check_codeword'

RSpec.describe "check_codeword method" do 
  it "returns wrong message if given incorrect code word" do
    result = check_codeword("Jam")
    expect(result).to eq "WRONG!"
  end 

  it "returns a close message if given code word that is close to codeword" do
    result = check_codeword("hose")
    expect(result).to eq "Close, but nope."
  end 

  it "returns correct message when given correct codeword" do 
    result = check_codeword("horse")
    expect(result).to eq "Correct! Come in."
  end  
end 