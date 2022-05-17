require "todo"

RSpec.describe "todo method" do
    it "New class retruns task given when task is called" do
        x = Todo.new("fix shed")
        result = x.task
        expect(result).to eq "fix shed"
    end

    it "testing the mark_done method" do
        x = Todo.new("fix tap")
        x.mark_done!
        result = x.done?
        expect(result).to eq true
    end

    it "testing the done? method" do
        x = Todo.new("fix tap")
        result = x.done?
        expect(result).to eq false
    end
end