class TodoList

  def initialize(list)
    @list = list
  end

  def get_items
    @list
  end

  def add_item(new_item)
    @list << new_item
  end

  def delete_item(completed_task)
    @list.delete(completed_task)
  end

  def get_item(index)
    @list[index]
  end

end

list = TodoList.new(["do the dishes", "mow the lawn"])

#p list.get_items

#list.add_item("mop")

#p list.delete_item("do the dishes")


#p list.get_items(0)
