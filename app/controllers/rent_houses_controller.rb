class RentHousesController < ApplicationController
  before_action :set_rent_house, only: [:show, :edit, :update, :destroy]

  # GET /rent_houses
  # GET /rent_houses.json
  def index
    @rent_houses = RentHouse.all
  end

  # GET /rent_houses/1
  # GET /rent_houses/1.json
  def show
    @stations = Station.where(rent_house_id: set_rent_house.id).all
  end

  # GET /rent_houses/new
  def new
    @rent_house = RentHouse.new
    2.times { @rent_house.stations.new }
  end

  # GET /rent_houses/1/edit
  def edit
  end

  # POST /rent_houses
  # POST /rent_houses.json
  def create
    @rent_house = RentHouse.new(rent_house_params)
    respond_to do |format|
      if @rent_house.save
        format.html { redirect_to @rent_house, notice: 'Rent house was successfully created.' }
        format.json { render :show, status: :created, location: @rent_house }
      else
        format.html { render :new }
        format.json { render json: @rent_house.errors, status: :unprocessable_entity }
      end
    end
  end


  # PATCH/PUT /rent_houses/1
  # PATCH/PUT /rent_houses/1.json
  def update
    respond_to do |format|
      if @rent_house.update(rent_house_params)
        format.html { redirect_to @rent_house, notice: 'Rent house was successfully updated.' }
        format.json { render :show, status: :ok, location: @rent_house }
      else
        format.html { render :edit }
        format.json { render json: @rent_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rent_houses/1
  # DELETE /rent_houses/1.json
  def destroy
    @rent_house.destroy
    respond_to do |format|
      format.html { redirect_to rent_houses_url, notice: 'Rent house was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def confirm
    @rent_house = RentHouse.new(blog_params)
    render :new if @rent_house.invalid?
  end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_rent_house
      @rent_house = RentHouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rent_house_params
      params.require(:rent_house).permit(:home_name, :rent, :address, :age, :note, stations_attributes:
        [:along_the_line, :station_name, :walking_minutes])
  end
end
