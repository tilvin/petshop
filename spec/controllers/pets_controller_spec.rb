require "rails_helper"

RSpec.describe PetsController, :type => :controller do

  it "GET #index" do
    get :index
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end
  
  it "GET #new" do
    get :new
    expect(response).to be_success
    expect(response).to have_http_status(200)  
  end
  
  it "POST #create" do
    post :create, pet: {name: 'Name 1'}
    expect(response).to redirect_to(pet_path(assigns[:pet]))
  end
  
  #   pet = create(:pet)

  it "GET #show" do
    pet = Pet.create(name: 'name1')
    get :show, id: pet.id
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end
  
  it "GET #edit" do
    pet = Pet.create(name: 'name1')
    get :edit, id: pet.id
    expect(response).to be_success
    expect(response).to have_http_status(200)
  end
  
  it "#update" do
    pet = Pet.create(name: 'name1')
    put :update, id: pet.id, pet: {name: 'name2'} 
    expect(response).to redirect_to(pet_path(assigns[:pet]))
    expect(assigns[:pet].name).to eq('name2')   
  end
  
  it "#destroy" do
    pet = Pet.create(name: 'name1')
    delete :destroy, id: pet.id
    expect(response). to redirect_to(pets_path)
    expect(Pet.count).to eq(0)
  end  
end  