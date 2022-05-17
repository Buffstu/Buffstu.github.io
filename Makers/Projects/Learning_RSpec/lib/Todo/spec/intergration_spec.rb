require "todo"
require "todo_list"

RSpec.describe "intergration" do
    it "add a todo, mark as done and add to todo_list and call complete" do
        x = Todo.new("Clean the house")
        x.mark_done!
        y = TodoList.new
        y.add(x)
        result = y.complete
        expect(result).to eq ["Clean the house"]
    end

    it " call complete with other incomplete todos in the todo_list " do
        x = Todo.new("Clean the house")
        z = Todo.new("Buy a new husband")
        x.mark_done!
        y = TodoList.new
        y.add(x)
        y.add(z)
        result = y.complete
        expect(result).to eq ["Clean the house"]
    end

    it "Returns list of incomplete todos" do 
        y = TodoList.new
        x = Todo.new("Foxy")
        y.add(x)
        result = y.incomplete
        expect(result).to eq ["Foxy"]
    end

    it "Returns list of multiple incomplete todos" do 
        y = TodoList.new
        x = Todo.new("Foxy")
        z = Todo.new("Wolfy")
        y.add(x)
        y.add(z)
        result = y.incomplete
        expect(result).to eq ["Foxy", "Wolfy"]
    end

    it "Turns all incomplete to complete" do
        y = TodoList.new
        x = Todo.new("Foxy")
        z = Todo.new("Wolfy")
        y.add(x)
        y.add(z)
        y.give_up!
        result = y.complete
        expect(result).to eq ["Foxy", "Wolfy"]
    end

end

