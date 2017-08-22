class Stuff

  def initialize(name,base_price,tax_rate)
    @name = name
    @base_price = base_price
    @tax_rate = tax_rate
  end

  # READER / GETTER
  def name
    @name
  end

  def base_price
    @base_price
  end

  def tax_rate
    @tax_rate
  end

  #WRITER  / SETTER

  def name=(name)
    @name = name
  end


end
# item1 = Stuff.new("shirt", 30, 0.13)
# item2 = Stuff.new("socks", 2.99, 0.13)
# item3 = Stuff.new("shoe", 125, 0.13)
# item4 = Stuff.new("hat", 15.99, 0.13)
# item5 = Stuff.new("jacket", 45.99, 0.13)
# item6 = Stuff.new("shorts", 25.99, 0.13)
# item7 = Stuff.new("trouser", 30.99, 0.13)
# item8 = Stuff.new("glasses", 20.99, 0.13)
# item9 = Stuff.new("hoodies", 55.99, 0.13)
#
#
# puts Stuff.all.inspect
# puts item1.base_price
# puts item3.tax_rate
