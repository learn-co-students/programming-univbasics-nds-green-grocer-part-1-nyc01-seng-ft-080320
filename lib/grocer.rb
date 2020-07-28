def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  
  collection.each{ |item|
    if item[:item] == name
      return item
    end
  }
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  consolidated_cart = [];
  cart.each{ |cart_item|
    index = consolidated_cart.find_index{ |receipt_item|
      receipt_item[:item]==cart_item[:item]
    }
    if index
      consolidated_cart[index][:count] += 1
    else
      item_to_add = cart_item
      item_to_add[:count]=1
      consolidated_cart.push(item_to_add)
    end
  }
  consolidated_cart
end


  