class Todo
    def initialize(task) # task is a string
      @task = task
      @task_done = false
    end
  
    def task
      return @task
    end
  
    def mark_done!
      @task_done = true
    end
  
    def done?
      return @task_done
    end
  end