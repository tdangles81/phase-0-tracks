class TodoList
  def initialize(things_to_do)
    @things_to_do = things_to_do
  end

  def get_items
    @things_to_do
  end

  def add_item(new_value)
    @things_to_do << new_value
  end

  def delete_item(new_value)
    @things_to_do.delete(new_value)
  end

  def get_item(index)
  	@things_to_do[index]
  end
end