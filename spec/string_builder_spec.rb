require 'string_builder'

RSpec.describe StringBuilder do 

  context "When nothing is inputted" do 
    it "returns an empty string" do
      stringbuilder = StringBuilder.new
      expect(stringbuilder.output). to eq ""
    end 
  end  

  it "returns a length of 0" do 
    stringbuilder = StringBuilder.new 
    expect(stringbuilder.size).to eq 0
  end 
  
  it "combines inputted strings and returns strings as one" do
    stringbuilder = StringBuilder.new
    stringbuilder.add("Ruby")
    stringbuilder.add(" Tuesdays.")
    expect(stringbuilder.output).to eq "Ruby Tuesdays."
  end

  it "returns the length of the concatonated string" do 
    stringbuilder = StringBuilder.new 
    stringbuilder.add("Ruby")
    stringbuilder.add(" Tuesdays.")
    expect(stringbuilder.size).to eq 14
  end 
end 
