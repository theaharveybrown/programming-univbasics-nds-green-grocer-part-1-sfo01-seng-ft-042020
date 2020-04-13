def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  item = nil
  collection.each do |grocery| 
    if grocery[:item] == name 
      item = grocery
    end 
  end 
  item

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
      puts "ITEM #{item}"
      consolidated_cart << item
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
