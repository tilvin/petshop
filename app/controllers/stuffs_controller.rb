class StuffsController < ApplicationController
  before_action :set_stuff, only: [:show, :edit, :update, :destroy]
  before_action :set_pet

  # GET /stuffs
  # GET /stuffs.json
  def index
    @stuffs = @pet.stuffs.send(params[:group])
    @pets = Pet.all
  end

  # GET /stuffs/1
  # GET /stuffs/1.json
  def show
    @pets = Pet.all

  end

  # GET /stuffs/new
  def new
    @stuff = Stuff.new
  end

  # GET /stuffs/1/edit
  def edit
  end

  # POST /stuffs
  # POST /stuffs.json
  def create
    @stuff = Stuff.new(stuff_params)

    respond_to do |format|
      if @stuff.save
        format.html { redirect_to pet_stuff_path(@pet, @stuff), notice: 'Stuff was successfully created.' }
        format.json { render :show, status: :created, location: @stuff }
        puts params[:stuff]
      else
        format.html { render :new }
        format.json { render json: @stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stuffs/1
  # PATCH/PUT /stuffs/1.json
  def update
    respond_to do |format|
      if @stuff.update(stuff_params)
        format.html { redirect_to pet_stuff_path(@pet, @stuff), notice: 'Stuff was successfully updated.' }
        format.json { render :show, status: :ok, location: @stuff }
      else
        format.html { render :edit }
        format.json { render json: @stuff.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stuffs/1
  # DELETE /stuffs/1.json
  def destroy
    @stuff.destroy
    respond_to do |format|
      format.html { redirect_to pet_stuffs_path(@pet), notice: 'Stuff was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stuff
      @stuff = Stuff.find(params[:id])
    end

    def set_pet
      @pet = Pet.find(params[:pet_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stuff_params
      params.require(:stuff).permit(:pet_id, :name, :size, :description, :brand_id, :discount_id, :group, :price, 
                                    :picture, :sale, :annotation, color: [], weights_attributes: [:id, :stuff_id, :price, :size, :_destroy])
    end


end
