class FacesController < ApplicationController
  before_action :set_face, only: [:show, :edit, :update, :destroy]

  # GET /faces
  # GET /faces.json
  def index
    @faces = Face.all
  end

  # GET /faces/1
  # GET /faces/1.json
  def show
  end

  # GET /faces/new
  def new
    @face = Face.new
  end

  # GET /faces/1/edit
  def edit
  end

  # POST /faces
  # POST /faces.json
  def create
    @face = Face.new(face_params)

    respond_to do |format|
      if @face.save
        format.html { redirect_to @face, notice: 'Face was successfully created.' }
        format.json { render action: 'show', status: :created, location: @face }
      else
        format.html { render action: 'new' }
        format.json { render json: @face.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /faces/1
  # PATCH/PUT /faces/1.json
  def update
    respond_to do |format|
      if @face.update(face_params)
        format.html { redirect_to @face, notice: 'Face was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @face.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /faces/1
  # DELETE /faces/1.json
  def destroy
    @face.destroy
    respond_to do |format|
      format.html { redirect_to faces_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_face
      @face = Face.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def face_params
      params.require(:face).permit(:name, :image, :elo_rating, :won, :lost)
    end
end
