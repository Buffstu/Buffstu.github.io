require "password_checker"

RSpec.describe PasswordChecker do
    it "Throws an error if password is not long enough" do
        passwordchecker = PasswordChecker.new()
        expect{ passwordchecker.check("house") }.to raise_error "Invalid password, must be 8+ characters."
    end

    it "Returns true if length min is met" do
        passwordchecker = PasswordChecker.new()
        result = passwordchecker.check("qwertyuiop")
        expect(result).to eq true
    end
end