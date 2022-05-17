require "music_track.rb"

RSpec.describe Musictracker do
    it "Returns an empty array when no add is called" do
        musictraker = Musictracker.new()
        result = musictraker.report
        expect(result).to eq []
    end

    it "returns track when added" do
        musictraker = Musictracker.new()
        musictraker.add("wolf")
        result = musictraker.report
        expect(result).to eq ["wolf"]
    end

    it "Returns multiple items when multiple are added" do
        musictraker = Musictracker.new()
        musictraker.add("wolf")
        musictraker.add("chair")
        result = musictraker.report
        expect(result).to eq ["wolf", "chair"]
    end

    it "Returns only unique items" do
        musictraker = Musictracker.new()
        musictraker.add("wolf")
        musictraker.add("chair")
        musictraker.add("chair")
        result = musictraker.report
        expect(result).to eq ["wolf", "chair"]
    end
end