
def consolidate_cart(cart)
  updated_cart = {}
  cart.each do |item|
  item.each do |product,info|
    if updated_cart.keys.include?(product)
        updated_cart[product][:count] +=1

      else
        updated_cart[product] = info
        updated_cart[product][:count] = 1
  end
end
end
updated_cart
end


def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    name = coupon[:item]
    if cart[name] && cart[name][:count] >= coupon[:num]
      if cart["#{name} W/COUPON"]
        cart["#{name} W/COUPON"][:count] += 1
      else
        cart["#{name} W/COUPON"] = {:count => 1, :price => coupon[:cost]}
        cart["#{name} W/COUPON"][:clearance] = cart[name][:clearance]
      end
      cart[name][:count] -= coupon[:num]
    end
  end
  cart
end


def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
