require 'counter'

RSpec.describe Counter do 
  it "reports the total of all numbers added" do 
  counter = Counter.new 
  counter.add(8)
  counter.add(10)
  expect(counter.report).to eq "Counted to 18 so far."
  end 
end 