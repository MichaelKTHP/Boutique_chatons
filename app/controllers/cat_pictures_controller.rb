class CatPicturesController < ApplicationController
  before_action :set_cat_picture, only: [:show, :edit, :update, :destroy]

  # GET /cat_pictures
  # GET /cat_pictures.json
  def index
    @cat_pictures = CatPicture.all
  end

  # GET /cat_pictures/1
  # GET /cat_pictures/1.json
  def show
  end

  # GET /cat_pictures/new
  def new
    @cat_picture = CatPicture.new
  end

  # GET /cat_pictures/1/edit
  def edit
  end

  # POST /cat_pictures
  # POST /cat_pictures.json
  def create
    @cat_picture = CatPicture.new(cat_picture_params)

    respond_to do |format|
      if @cat_picture.save
        format.html { redirect_to @cat_picture, notice: 'Cat picture was successfully created.' }
        format.json { render :show, status: :created, location: @cat_picture }
      else
        format.html { render :new }
        format.json { render json: @cat_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cat_pictures/1
  # PATCH/PUT /cat_pictures/1.json
  def update
    respond_to do |format|
      if @cat_picture.update(cat_picture_params)
        format.html { redirect_to @cat_picture, notice: 'Cat picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @cat_picture }
      else
        format.html { render :edit }
        format.json { render json: @cat_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cat_pictures/1
  # DELETE /cat_pictures/1.json
  def destroy
    @cat_picture.destroy
    respond_to do |format|
      format.html { redirect_to cat_pictures_url, notice: 'Cat picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cat_picture
      @cat_picture = CatPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cat_picture_params
      params.fetch(:cat_picture, {})
    end
end
