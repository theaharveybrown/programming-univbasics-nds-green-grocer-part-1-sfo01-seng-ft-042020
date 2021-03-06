def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
 
  collection.each do |grocery| 
    if grocery[:item] == name 
      return grocery
    end 
    
  end 
  nil

end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  final_cart = []
   
  index = 0 
  while index < cart.length do 
    item = find_item_by_name_in_collection(cart[index][:item], final_cart)
    if item 
      final_index = 0 
      while final_index < final_cart.length do 
        if final_cart[final_index][:item] === item[:item]
        
          final_cart[final_index][:count] += 1 
        end
        final_index += 1 
      end
    else 
      cart[index][:count] = 1 
      final_cart << cart[index]
    end
    index += 1 
  end 
  final_cart
end
