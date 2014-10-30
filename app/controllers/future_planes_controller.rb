class FuturePlanesController < ApplicationController
  before_action :set_future_plane, only: [:show, :edit, :update, :destroy]

  # GET /future_planes
  # GET /future_planes.json
  def index
    @future_planes = FuturePlane.all
  end

  # GET /future_planes/1
  # GET /future_planes/1.json
  def show
  end

  # GET /future_planes/new
  def new
    @future_plane = FuturePlane.new
  end

  # GET /future_planes/1/edit
  def edit
  end

  # POST /future_planes
  # POST /future_planes.json
  def create
    @future_plane = FuturePlane.new(future_plane_params)

    respond_to do |format|
      if @future_plane.save
        format.html { redirect_to @future_plane, notice: 'Future plane was successfully created.' }
        format.json { render :show, status: :created, location: @future_plane }
      else
        format.html { render :new }
        format.json { render json: @future_plane.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /future_planes/1
  # PATCH/PUT /future_planes/1.json
  def update
    respond_to do |format|
      if @future_plane.update(future_plane_params)
        format.html { redirect_to @future_plane, notice: 'Future plane was successfully updated.' }
        format.json { render :show, status: :ok, location: @future_plane }
      else
        format.html { render :edit }
        format.json { render json: @future_plane.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /future_planes/1
  # DELETE /future_planes/1.json
  def destroy
    @future_plane.destroy
    respond_to do |format|
      format.html { redirect_to future_planes_url, notice: 'Future plane was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_future_plane
      @future_plane = FuturePlane.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def future_plane_params
      params.require(:future_plane).permit(:title, :planning_time, :detail)
    end
end
