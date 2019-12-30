def find_item_by_name_in_collection(name, collection)
 index= 0
while index<collection.length do
 if collection[index][:item][name] 
   return collection[index]
 end
 index+=1
 end
 nil
end

def consolidate_cart(cart)
c_cart = []
index = 0
while index<cart.length do
  new_cart_item = find_item_by_name_in_collection(cart[index][:item], c_cart)
  if new_cart_item
  new_cart_item[:count] +=1
  else 
  new_item = {
    :item => cart[index][:item],
    :price => cart[index][:price],
    :clearance => cart[index][:clearance],
    :count => 1
  }
  c_cart << new_item
  end
  index+=1
end
c_cart
end

if discounted_item && (discounted_item[:count] >= coupons[i][:num])
  if cart_item_with_coupon
    cart_item_with_coupon[:count] += coupons[i][:num]
    discounted_item[:count] -= coupons[i][:num]
    else
    coupon_item = {
    :item => coupon_item_name,
    :price => discounted_cost,
    :clearance => discounted_item[:clearance],
    :count => coupons[i][:num]
    }
    cart << coupon_item
    discounted_item[:count] -= coupons[i][:num]
  end
end
i+=1
end
cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
