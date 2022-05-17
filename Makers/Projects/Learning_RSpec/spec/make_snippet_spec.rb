require "make_snippet"

RSpec.describe "Returns first 5 words and a ... for extra letters" do
    it "Return first 5 words" do
        result = make_snippet("qwertyuiop in the house jam")
        expect(result).to eq "qwertyuiop in the house jam"
    end

    it "Return first 5 words with a word exaclty 5 letters long" do
        result = make_snippet("shops")
        expect(result).to eq "shops"
    end

    it "Return first 5 words with a word shorter than 5 letters" do
        result = make_snippet("dog")
        expect(result).to eq "dog"
    end

    it "Return first 5 with ... appended if there are more than 5 words" do
        result = make_snippet("in the house is a mouse")
        expect(result).to eq "in the house is a..."
    end
end