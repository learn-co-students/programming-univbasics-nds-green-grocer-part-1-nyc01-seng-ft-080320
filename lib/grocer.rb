def find_item_by_name_in_collection(name, collection)
  collection.each {|itemHash|
    if itemHash[:item] == name
      return itemHash;
    end
}
  return nil;
  end
  
def consolidate_cart(uCart)
  cCart = [];
  
  uCart.each {|item|
    isItemInCart = find_item_by_name_in_collection(item[:item], cCart)
    if isItemInCart
      isItemInCart[:count] += 1;
    else
      item[:count] = 1;
      cCart.push(item);
    end
  }
  return cCart;
end


  