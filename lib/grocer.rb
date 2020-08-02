require 'pry'


def find_item_by_name_in_collection(name, collection)

  counter = 0
  
  while counter < collection.length do
    if name == collection[counter][:item]
      return collection[counter]
    end
    counter += 1
  end
end


def consolidate_cart(cart)

  new_cart = []
  items_scanned = 0
  
  while cart.length > items_scanned do
    current_item = find_item_by_name_in_collection(cart[items_scanned][:item], new_cart)
      if current_item
        new_cart_count = 0
        while new_cart_count < new_cart.length do
          if new_cart[new_cart_count][:item] == current_item[:item]
            new_cart[new_cart_count][:count] += 1
          end
          new_cart_count += 1
        end
      else
        cart[items_scanned][:count] = 1
        new_cart << cart[items_scanned]
      end
      items_scanned += 1
    end
  new_cart
end