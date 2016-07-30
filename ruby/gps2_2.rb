#Create an initial list of items with quantities.
list = {"carrots" => 5, "apples" => 10, "cereal" => 25, "pizza" => 30}

#Set initial quantities of each item to default.
def set_default(new_list)
  @default = new_list
end

#Add new items to a list with new quantities.
def add_item(new_item, new_quantity)
  @default [new_item] = new_quantity
  @default
end

#Remove items from list that match list item names.
def remove_item(item)
  @default.delete(item)
  @default
end

#Update quantity of a specific item in the list.
def update_quantity(item, quantity)
  @default [item] = quantity
  @default
end

#Make a list pretty, going through each item in the list.
def print_list
  @default.each do |k, v|
    puts "#{k} has a quantity of #{v}."
  end
end

#TEST
p set_default(list)
p add_item("Lemonade", 2)
p add_item("Tomatoes", 3)
p add_item("Onions", 1)
p add_item("Ice Cream", 4)

p remove_item("Lemonade")
p update_quantity("Ice Cream", 1)
puts print_list

=begin
What did you learn about pseudocode from working on this challenge?
-We learned that pseudocoding gives us direction before physically coding, and also allows us to visualize what methods will do.

What are the tradeoffs of using arrays and hashes for this challenge?
-Hashes are useful when assigning values to a key, while you would need multiple arrays to achieve the same thing. This would make code unecessarily complicated.

What does a method return?
-Methods return the last argument within them due to implicit returns.

What kind of things can you pass into methods as arguments?
-Can pass all data types including string, integer, boolean, float.

How can you pass information between methods?
-Using a variable with scope that would allow it to be accessed by multiple methods.

What concepts were solidified in this challenge, and what concepts are still confusing?
-Manipulating hashes became more clear after this lesson, as well as the use of variables in methods. However, finding the best methods of accessing hash keys was confusing at times.

=end