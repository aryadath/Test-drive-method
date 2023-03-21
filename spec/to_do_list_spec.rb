require 'to_do_list'

RSpec.describe ToDoList do
  context 'given no tasks' do
    it 'returns an empty list' do
      to_do_list = ToDoList.new
      expect(to_do_list.list).to eq []
    end
  end

  context 'given a task' do
    it 'returns a task in a list' do
      to_do_list = ToDoList.new
      to_do_list.add('Do the dishes')
      expect(to_do_list.list).to eq ['Do the dishes'] 
    end
  end

  context 'add a task' do
    it 'returns added task in a list' do
      to_do_list = ToDoList.new
      to_do_list.add('Do the dishes')
      to_do_list.add('Walk the dog')
      expect(to_do_list.list).to eq ['Do the dishes', 'Walk the dog'] 
    end
  end

  context 'complete a task' do
    it 'removes task from list' do
      to_do_list = ToDoList.new
      to_do_list.add('Do the dishes')
      to_do_list.add('Walk the dog')
      to_do_list.complete('Do the dishes')
      expect(to_do_list.list).to eq ['Walk the dog'] 
    end
  end

  context 'adds an empty string' do
    it 'returns a fail' do
      to_do_list = ToDoList.new
      to_do_list.add(' ')
      expect{ to_do_list.add(' ') }.to raise_error "No such task"
    end
  end

  context 'recieves a task that is not on the list' do
    it 'returns a fail' do
      to_do_list = ToDoList.new
      to_do_list.add('Do the dishes')
      expect{ to_do_list.complete('Cook') }.to raise_error 'Cannot find task'
    end
  end
end