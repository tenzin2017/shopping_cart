require_relative 'stuff'
require 'pry'

class Shopping_cart

  @@cart = []

  def initialize(name)
      @name = name
  end

  def self.add_product_to_cart(item)
    @@cart << item
    return item
  end

  def self.remove_product(item)
     @@cart.delete(item)
     return item
  end

  def self.total_cost_before_tax
     total_cost = 0
    @@cart.each do |stuff|
      total_cost += stuff.base_price
      end
    return total_cost
  end

  def self.total_cost_after_tax
    total_cost = 0
    @@cart.each do |stuff|
      total_cost += stuff.base_price + 0.13*stuff.base_price
      end
    return total_cost
  end

  def self.cart
    @@cart
  end




end

buyer1 = Shopping_cart.new("my shopping list").inspect

item1 = Stuff.new("shirt", 30, 0.13)
item2 = Stuff.new("socks", 2.99, 0.13)
item3 = Stuff.new("shoe", 125, 0.13)


puts Shopping_cart.add_product_to_cart(item1).inspect
puts Shopping_cart.add_product_to_cart(item2).inspect
puts Shopping_cart.add_product_to_cart(item3).inspect

puts Shopping_cart.total_cost_before_tax
puts Shopping_cart.total_cost_after_tax




puts Shopping_cart.remove_product(item2)


puts Shopping_cart.cart.inspect
