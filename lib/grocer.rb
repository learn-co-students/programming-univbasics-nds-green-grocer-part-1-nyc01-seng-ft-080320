def find_item_by_name_in_collection(name, collection)
  collection.each do |item_hash|
    if item_hash.fetch(:item) == name
      return item_hash
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  new_cart = []
  cart.each do |item_hash|
    # if the given item is not currently in the new cart, shovel its hash into the new cart
    # and add a key:value pair of count: 1 to the thing most recently shoveled
    if !find_item_by_name_in_collection(item_hash[:item], new_cart)
      new_cart << item_hash
      new_cart[-1][:count] = 1
    
    # if the given item IS currently in the new cart, we need to find it and update its count value
    else 
      new_cart.each do |new_cart_item_hash|
        if item_hash[:name] == new_cart_item_hash[:name]
          item_hash[:count] += 1
        end
      end
    end
  end
end


  