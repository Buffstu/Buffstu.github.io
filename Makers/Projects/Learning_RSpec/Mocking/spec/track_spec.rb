require "track"

RSpec.describe Track do
    it "matches when given keyword in the title" do
        track = Track.new("one Matches two", "three four")
        expect(track.matches?("Matches")).to eq true
    end

    it "matches when given keyword in the artist" do
        track = Track.new("one two", "three Matches four")
        expect(track.matches?("Matches")).to eq true
    end

    it "matches when given keyword in the title" do
        track = Track.new("one two", "three four")
        expect(track.matches?("Matches")).to eq false
    end
end