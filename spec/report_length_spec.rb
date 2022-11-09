require 'report_length'

RSpec.describe "report_length method" do 
  it "tells the user the length of a given string" do 
  result = report_length("Hello")
  expect(result). to eq "This string was 5 characters long."
  end 
end 