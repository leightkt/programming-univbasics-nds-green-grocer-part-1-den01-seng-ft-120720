def find_item_by_name_in_collection(name, collection)
  # Implement me first!
  #
  # Consult README for inputs and outputs
  collection.each do |item|
    if name == item[:item]
    return item
    end
  end
  return nil
end

def consolidate_cart(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This returns a new Array that represents the cart. Don't merely
  # change `cart` (i.e. mutate) it. It's easier to return a new thing.
  bag = Array.new
  cart.each do |item|
    if find_item_by_name_in_collection(item[:item], bag)
      bag.each do |object|
        if object[:item] == item[:item]
          object[:count] += 1
        end
      end 
    else
      puts "not found"
      item[:count] = 1
      bag << item
    end
  end
  return bag
end


  