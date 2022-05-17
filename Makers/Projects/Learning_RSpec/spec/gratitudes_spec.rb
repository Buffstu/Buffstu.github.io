require "gratitudes"

RSpec.describe Gratitudes do
    it "adds argument to array" do
        gratitudes = Gratitudes.new()
        gratitudes.add("Bacon")
        result = gratitudes.format
        expect(result).to eq "Be grateful for: Bacon"
    end

    it "add multiple items to the array before formating" do
        gratitudes = Gratitudes.new()
        gratitudes.add("Tomato")
        gratitudes.add("Beans")
        result = gratitudes.format
        expect(result).to eq "Be grateful for: Tomato, Beans"
    end
end
