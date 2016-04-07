class Cart < ActiveRecord::Base
  
  has_many :line_items
  has_many :stuffs, through: :line_items

  accepts_nested_attributes_for :line_items

  def add_stuff(stuff_id)
     current_stuff = line_items.find_by(stuff_id: stuff_id)
     if current_stuff
         current_stuff.quantity += 1
     else
         current_stuff = line_items.build(stuff_id: stuff_id)
     end
     current_stuff
 end

  def add_stuff2(stuff_id)
    if cart.stuffs.include?(stuff_id)
      positions.where(stuff_id: stuff.id).first.increment!(:quantity) 
    else
      positions.create(item: i, quantity: 1) 
    end
  end  

  def price_not_weight 
    line_items.map { |li| (li.stuff.price - (li.stuff.price/100 * li.stuff.sale)) * li.quantity }.sum
  end
  
  def price_weight
    line_items.with_weight.map {|li| (li.weight.price - (li.weight.price/100 * li.stuff.sale)) * li.quantity }.sum
  end

end
