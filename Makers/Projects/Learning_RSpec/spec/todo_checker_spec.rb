require "todo_checker"

RSpec.describe "todo_checker method" do
    it "Empty string equals false" do
        result = todo_check("")
        expect(result).to eq false 
    end

    it "If no #TODO is found retrun false" do 
        result = todo_check("the quick brown fox")
        expect(result).to eq false
    end

    it "if #TODO is the string return true" do
        result = todo_check("#TODO")
        expect(result).to eq true
    end

    it "if #TODO is one of the words in the given string return true" do
        result = todo_check("the quick brown fox #TODO")
        expect(result).to eq true
    end

    it "returns false if the hashtag is missing" do
        result = todo_check("TODO")
        expect(result).to eq false
    end

    it "returns false on a #todo which is no uppercase" do
        result = todo_check("#todo")
        expect(result).to eq false
    end
end