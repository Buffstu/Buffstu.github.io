require "check_codeword"

RSpec.describe "Check if codeword is correct" do
    it "Corect Codeword is given" do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end
    
    it "Returns WRONG when given incorrect parameter" do
        result = check_codeword("flumph")
        expect(result).to eq "WRONG!"
    end

    it "Returns a close message" do
        result = check_codeword("hose")
        expect(result).to eq "Close, but nope."
    end
end 