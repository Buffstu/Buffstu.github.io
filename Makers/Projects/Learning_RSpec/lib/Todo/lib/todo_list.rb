class TodoList
    def initialize
        @list_of_todos = []
        @list_of_completed_todos = []
    end
  
    def add(todo) 
        if todo.done? == false
            @list_of_todos.push(todo.task)
        else
            @list_of_completed_todos.push(todo.task)
        end
        
    end
  
    def incomplete
        fail "Empty array will throw error" unless @list_of_todos.length > 0
        return @list_of_todos
    end
  
    def complete
        fail "Empty array will throw error"  unless @list_of_completed_todos.length > 0
        return @list_of_completed_todos
    end
  
    def give_up!
        for i in @list_of_todos
            @list_of_completed_todos.push(i)
        end
    end
  end