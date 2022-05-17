require "grammer_stats"

RSpec.describe GrammarStats do
    it "Returns true if string starts with a capital" do
        grammerstats = GrammarStats.new()
        result = grammerstats.check("Correct!")
        expect(result).to eq true
    end

    it "Returns flase if string does not start with a capital" do
        grammerstats = GrammarStats.new()
        result = grammerstats.check("wrong!")
        expect(result).to eq false 
    end

    it "Returns false if punctuation is missing at the end of string" do
        grammerstats = GrammarStats.new()
        result = grammerstats.check("Wrong")
        expect(result).to eq false
    end

    it "Returns true for full sentance" do
        grammerstats = GrammarStats.new()
        result = grammerstats.check("The quick brown fox.")
        expect(result).to eq true
    end
    
    it "Returs 0% if string is empty" do
        grammerstats = GrammarStats.new()
        result = grammerstats.percentage_good()
        expect(result).to eq 0
    end

    it "Returns 100 if all the strings are true" do
        grammerstats = GrammarStats.new()
        grammerstats.check("Correct!")
        result = grammerstats.percentage_good
        expect(result).to eq 100
    end

    it "Returns 50 if half are correct" do
        grammerstats = GrammarStats.new()
        grammerstats.check("Telso")
        grammerstats.check("Trev!")
        result = grammerstats.percentage_good
        expect(result).to eq 50
    end

    it "Returns 10 for just one correct out of 10 given" do
        grammerstats = GrammarStats.new()
        grammerstats.check("Correct?")
        grammerstats.check("correct!")
        grammerstats.check("correct!")
        grammerstats.check("correct!")
        grammerstats.check("correct!")
        grammerstats.check("correct!")
        grammerstats.check("correct!")
        grammerstats.check("correct!")
        grammerstats.check("correct!")
        grammerstats.check("correct!")
        result = grammerstats.percentage_good
        expect(result).to eq 10
    end
end