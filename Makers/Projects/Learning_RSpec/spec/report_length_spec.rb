require "report_length"

RSpec.describe "report_length method" do 
    it "Returns the correct length" do
        result = report_length("ten")
        expect(result).to eq "This string was 3 characters long."
    end
end