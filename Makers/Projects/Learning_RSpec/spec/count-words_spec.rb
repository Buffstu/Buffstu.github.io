require "count_words"

RSpec.describe "count_words method" do
    it "Checks if string is empty" do
        result = count_words("")
        expect(result).to eq 0
    end

    it "Returns number of words in a given argument for one word" do
        result = count_words("the")
        expect(result).to eq 1
    end

    it "Returns number of words in a given argument for multiple words" do
        result = count_words("the man in the bank was a bank robber")
        expect(result).to eq 9
    end
end