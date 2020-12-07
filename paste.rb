require 'pry'

def find_item_by_name_in_collection(name, collection)
  counter = 0 
  while counter < collection.length do 
    if name == collection[counter][:item]
      return collection[counter]
    end
    counter += 1 
  end
  nil 
end

def consolidate_cart(cart)
 final_cart = [ ]
 counter = 0  
 
 cart.each do |cart_item|
   scanner_item = find_item_by_name_in_collection(cart_item[:item]), final_cart)
   if scanner_item
     final_cart_index = 0
     final_cart.each do |final_cart_item|
       if final_cart_item[:item] === cart_item[:item]
         final_cart_item[:count] += 1
       end
       final_cart_index += 1 
     end
    else
      cart_item[:count] += 1
      final_cart << cart_item
    end
    counter += 1
  end
 final_cart
end