def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  i = 0
  while i < collection.length do
    return collection[i] if name === collection[i][:item]
    i += 1
  end
  nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
i = 0
consolidate = []
while i < cart.count do 
  item_name = cart[i][:item]
  new_item = find_item_by_name_in_collection(item_name, consolidate)
  if new_item
    new_item[:count] += 1 
  else cart[i][:count] = 1 
    consolidate << cart[i]
  end
  i += 1 
end
consolidate
end
  