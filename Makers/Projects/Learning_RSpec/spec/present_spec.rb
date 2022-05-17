require "present"

RSpec.describe Present do
    it "Error if contents has allready been wrapper" do
        present = Present.new()
        present.wrap("dog")
        expect{ present.wrap("lop") }.to raise_error "A contents has already been wrapped."
    end
end