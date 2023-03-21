# {{PROBLEM}} Class Design Recipe

## 1. Describe the Problem
As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

## 2. Design the Class Interface

class ToDoList
  def initialize
  end

  def add(task) # task is string repreenting something the user must do
    # No return value
  end

  def complete(task)
    # deletes tasks if done
    #returns tasks if incomplete
  end
end


```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1

to_do_list = ToDoList.New
to_do_list.list => []

# 2
to_do_list = ToDoList.New
to_do_list.add('do the dishes')
to_do_list.list => ['do the dishes]


# 3
to_do_list = ToDoList.New
to_do_list.add('do the dishes')
to_do_list.add('do homeowork' )
to_do_list.list => ['do the dishes', 'do homework']


# 4
to_do_list = ToDoList.New
to_do_list.add('do the dishes')
to_do_list.add('do homeowork' )
to_do_list.complete('do homeowork' )
to_do_list.list => ['do homework']

#5 task that doesnt exist
to_do_list.add('do the dishes' )
to_do_list.complete('cook' )
to_do_list.list => fails 'cannot find task'
``

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->