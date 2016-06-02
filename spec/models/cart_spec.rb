require "rails_helper"

RSpec.describe Cart, :type => :model do
    before (:each) do 
        cart = create(:cart)
        pet = create(:pet)  
  
      it 'calculate line_items without weight' do 
        cart = create(:cart)    
        pet = create(:pet)    

        li1 = create(:line_item)
        li2 = create(:line_item, quantity: 2, stuff: create(:stuff, sale: 10))
        
        cart.line_items << li1
        cart.line_items << li2

        expect(cart.price_weight_not).to eq(840)
      end
      
      it 'calculate line_items with weight' do 
        
        li1 = create(:line_item2)
        li2 = create(:line_item2)

        cart.line_items << li1
        cart.line_items << li2

        expect(cart.price_weight).to eq(1000)
      end  
    end  
end     