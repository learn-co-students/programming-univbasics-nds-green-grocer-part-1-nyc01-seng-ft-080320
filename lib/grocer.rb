require 'pry'
def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |key|
    key.each do |in_key, in_val|
      if in_val == name
        return key
      end
  end
  end
  p nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
new_cart = []
counter = 0

 while counter < cart.length do
  new_item = find_item_by_name_in_collection(cart[counter][:item], new_cart)
  if new_item != nil
    new_item[:count] += 1
  else
    new_item = {:item => cart[counter][:item],
                :price => cart[counter][:price],
                :clearance => cart[counter][:clearance],
                :count => 1 }
   new_cart << new_item              
  end
 counter += 1
 end
 new_cart
end


  