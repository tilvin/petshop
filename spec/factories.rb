FactoryGirl.define do
  # factory :user do
  #   first_name "John"
  #   last_name  "Doe"
  #   admin false
  # end

  factory :cart do
  end
    
  factory :pet do
    name 'Рыбка'
  end

  factory :stuff do
    name 'Корм для рыбок'
    pet { Pet.last }
    price 300
  end
  
  factory :stuff2, class: Stuff do
    name 'Корм для птиц'
    pet { Pet.last } 
  end

  factory :weight do
    stuff { create(:stuff) }
    price 500
    size 10
  end
  
  factory :line_item do 
    cart {create(:cart)}
    stuff { create(:stuff) }
  end  
  
  factory :line_item2, class: LineItem do
    cart {create(:cart)}
    weight { create(:weight) }
    stuff {create(:stuff2)}
  end  

end