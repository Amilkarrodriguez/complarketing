class CampaingsController < ApplicationController
  before_action :set_campaing, only: [:show, :edit, :update, :destroy]

  # GET /campaings
  # GET /campaings.json
  def index
    @campaings = Campaing.all
  end

  # GET /campaings/1
  # GET /campaings/1.json
  def show
  end

  # GET /campaings/new
  def new
    @campaing = Campaing.new
  end

  # GET /campaings/1/edit
  def edit
  end

  # POST /campaings
  # POST /campaings.json
  def create
    @campaing = Campaing.new(campaing_params)

    respond_to do |format|
      if @campaing.save
        format.html { redirect_to @campaing, notice: 'Campaing was successfully created.' }
        format.json { render :show, status: :created, location: @campaing }
      else
        format.html { render :new }
        format.json { render json: @campaing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /campaings/1
  # PATCH/PUT /campaings/1.json
  def update
    respond_to do |format|
      if @campaing.update(campaing_params)
        format.html { redirect_to @campaing, notice: 'Campaing was successfully updated.' }
        format.json { render :show, status: :ok, location: @campaing }
      else
        format.html { render :edit }
        format.json { render json: @campaing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /campaings/1
  # DELETE /campaings/1.json
  def destroy
    @campaing.destroy
    respond_to do |format|
      format.html { redirect_to campaings_url, notice: 'Campaing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_campaing
      @campaing = Campaing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campaing_params
      params.require(:campaing).permit(:campaingName, :campaingCode, :status)
    end
end
