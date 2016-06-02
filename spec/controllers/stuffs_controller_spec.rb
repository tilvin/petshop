require "rails_helper"

RSpec.describe StuffsController, :type => :controller do

  before (:each) do 
    pet = create(:pet)
  
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
      post :create, stuff: {name: 'Корм для рыбок'}
      expect(response).to redirect_to(pet_stuff_path(assigns[:pet, :stuff]))
    end
    

    it "GET #show" do
      stuff = create(:stuff)
      get :show, id: stuff.id
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  
    it "GET #edit" do
      stuff = create(:stuff)
      get :edit, id: stuff.id
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
    
    it "#update" do
      stuff = create(:stuff)
      put :update, id: stuff.id, stuff: {name: 'Корм не для рыбок'} 
      expect(response).to redirect_to(pet_stuff_path(assigns[:pet, :stuff]))
      expect(assigns[:stuff].name).to eq('Корм не для рыбок')   
    end
    
    it "#destroy" do
      stuff = create(:stuff)
      delete :destroy, id: pet.id
      expect(response). to redirect_to(pet_stuffs_path)
      expect(Stuff.count).to eq(0)
    end  
  end
end  