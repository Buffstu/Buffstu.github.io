require "todo_list"

RSpec.describe TodoList do
    it "throws error if no todo is pushed and incomplete/complete is called" do
        y = TodoList.new 
        expect { y.incomplete }.to raise_error("Empty array will throw error") 
    end

    it "throws error if no todo is pushed and incomplete/complete is called" do
        y = TodoList.new 
        expect { y.complete }.to raise_error("Empty array will throw error") 
    end

    

    
end