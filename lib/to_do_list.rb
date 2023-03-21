class ToDoList
  def initialize(tasks = [])
    @tasks = tasks
  end

  def add(task)
    fail "No such task" if task.strip.empty?
    @tasks << task
  end

  def complete(task)
    fail "Cannot find task" unless @tasks.include? task
    @tasks.delete(task)
  end

  def list
    return @tasks
  end
end
