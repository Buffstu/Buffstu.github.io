require "string_builder"

RSpec.describe StringBuilder do
    it "Concatenates strings together" do
        stringbuilder = StringBuilder.new()
        stringbuilder.add("The quick brown fox jumped over the lazy cow")
        stringbuilder.add("Lorem ipsom")
        result = stringbuilder.output
        expect(result).to eq "The quick brown fox jumped over the lazy cowLorem ipsom"
    end
    it "Checks the string length" do
        stringbuilder = StringBuilder.new()
        stringbuilder.add("fox")
        result = stringbuilder.size
        expect(result).to eq 3
    end
end