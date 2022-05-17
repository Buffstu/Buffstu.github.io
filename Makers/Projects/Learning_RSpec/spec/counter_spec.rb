require "counter"

RSpec.describe Counter do
    it "adds a number given in the paramater to a running total" do
        counter = Counter.new()
        counter.add(5)
        counter.add(5)
        counter.add(5)
        result = counter.report()
        expect(result).to eq "Counted to 15 so far."
    end
end