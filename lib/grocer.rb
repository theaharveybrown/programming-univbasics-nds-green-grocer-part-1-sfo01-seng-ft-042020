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
  consolidated_cart = []
   
  index = 0 
  while index < cart.length do 
    item = find_item_by_name_in_collection(cart[index][:item], consolidated_cart)
    if item 
      consolidated_index = 0 
      while consolidated_index < consolidated_cart.length do 
        if consolidated_cart[consolidated_index][:item] === item[:item]
        
          consolidated_cart[index][:count] += 1 
        end
        consolidated_index += 1 
      end
    else 
      cart[index][:count] = 1 
      consolidated_cart << cart[index]
    end
    index += 1 
  end 
  puts consolidated_cart
end

grocery_shelf = [
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true },
  { :item => "CANNED CORN", :price => 2.50, :clearance => false },
  { :item => "SALSA", :price => 1.50, :clearance => false },
  { :item => "TORTILLAS", :price => 2.00, :clearance => false },
  { :item => "HOT SAUCE", :price => 1.75, :clearance => false },
  { :item => "CANNED BEANS", :price => 3.00, :clearance => true }
]

consolidate_cart(grocery_shelf)