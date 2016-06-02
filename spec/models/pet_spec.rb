require "rails_helper"

RSpec.describe Pet, :type => :model do
  
  it 'must be equal' do 
    pet = Pet.new(name: 'name1')
    expect(pet.name).to eq('name1')
  end
end     
