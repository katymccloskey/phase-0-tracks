# Today we'll be creating a Task List for an individual who has a lot of errands and tasks to complete and multiple locations or stores to go to in order to complete them.

# Release 1

# Create a class for a Task List.

# All TaskList instances should have an owner and a due date passed in on creation. For instance, our owner could be "Tyler" and his due date would be "Sunday". The owner should not be changeable but you should be able to read it outside of the class. The due date should be readable and writeable outside of the class.

# Release 2

# We may have multiple locations to go to in order to complete our tasks, for instance we may need to go to Target to pick up batteries. Create a list instance variable which can hold the location and tasks at each location. It should be empty on creation.

# When we think of a new location we need to go to, we'll need to save it in our list and set it up to hold multiple tasks. Create an instance method that will save the new location to the list with the ability to hold multiple tasks. If the location already exists in our list, notify the user that the location is already on the list.

# Release 3

# When we add a new task to the list, we'll need to also say which location the task should be completed. Create an instance method to save a task and its location to the list.

# If the location doesn't exist in the list yet, we'll need to create it, and then add the task. If the location already exists, then we'll need to check if that task already exists for the location. Check if that tasks is in our records for the location, if it's not, add it. If the task already exists, notify the user that the task is already on their list!

# Release 4

# Congrats, you completed a task - cross it off your list! Create an instance method to delete a task off its location records. If the specified location includes the task, delete it. If the specified location does not include the task, notify the user that they don't have that task on their list.

# Release 5

# Wow, you sure have a lot to do! Print out your list in a user friendly way, printing each location and then each of the tasks needed to be accomplished there below it. Like the following:

# At Target:
# - pick up batteries
# - get new toothpaste
# At pet store:
# - pick out new chew toy
# At post office:
# - mail Grandma's birthday present
# - buy new stamps
# Release 6

# Uh oh, have you done everything on your task list by the due date? Create a predicate instance method #is_past_due? that uses the current day as an argument and checks to see if your task list is past due. You'll need to compare the days of the week to each other in some way. Don't forget that if you have no tasks on your list, then nothing is past due!
# predicate instance method is a method that returns a boolean value (true or false)

class TaskList
  attr_reader :owner
  attr_accessor :due_date

  def initialize(owner, due_date)
    @owner = owner
    @due_date = due_date
    @list = {} #keys: location, values: tasks at each location
  end

 # { "Target" => ["pick up batteries", "pick up a clothesline"]}

  def new_location(location) #instance method to save location to list hash
    if @list[location].nil? #if location is not on the list
      @list[location] = []
    end
  end

  def add_task(task, location) #instance method to save a task and its location to the list
    new_location(location)
    if @list[location].include?(task)
      puts "You already have the task #{task} on your list. Try another one!"
    else
      @list[location] << task
    end
  end

  def remove_task(task, location)
    if @list[location] && @list[location].include?(task)
      @list[location].delete(task)
    else
      puts "You don't have the task #{task} at #{location}. Maybe you had it for somewhere else."
    end
  end

  def print_list
    puts "#{owner}'s Task List"
    puts "Due #{due_date}"
    puts #empty puts makes a new line
    @list.each do |location, tasks|
      if tasks.length > 0
        puts "At #{location}:"
        tasks.each do |task|
        puts "- #{task}"
    # for each location
      # print "at location"
      # for each task in the location's list
       #print the task name
        end
      end
    end
  end

  def is_past_due?(current_day)
    days_of_week = [
      "Sunday",
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday"
    ]
    if @list.values.all? { |tasks| tasks.empty? } #if for each value in our list, each on of them is empty, say
      puts "You have no more tasks, you're not a dumbdumb! Great job!"
      false
      else
        if days_of_week.index(current_day) < days_of_week.index(due_date)
          puts "You still have time to complete these tasks. Hurry up!"
          false
        else
         puts "Your list is overdue, dumbdumb!"
         true
        end
      end
    end

end

list = TaskList.new("Andrew", "Thursday")
list.new_location("Target")
list.add_task("pick up batteries", "Target")
list.add_task("pick up milkshakes", "Stan's Donuts")
list.add_task("pick up doge food", "Target")
list.remove_task("pick up milkshakes", "Stan's Donuts")

list.print_list

#p list.is_past_due?("Wednesday")
p list.is_past_due?("Wednesday")
# p list.owner
# p list.due_date
# list.due_date = "Friday"
# p list.due_date