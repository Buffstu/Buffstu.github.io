require "greet"

RSpec.describe "greet.rb method" do
    it "Returns the string Hello plus the paramater passed in" do
        result = greet("Ben")
        expect(result).to eq "Hello, Ben!"
    end
end 