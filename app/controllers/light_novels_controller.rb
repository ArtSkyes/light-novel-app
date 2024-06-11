class LightNovelsController < ApplicationController
  before_action :set_light_novel, only: %i[ show edit update destroy ]

  # GET /light_novels or /light_novels.json
  def index
    @light_novels = LightNovel.all
  end

  # GET /light_novels/1 or /light_novels/1.json
  def show
  end

  # GET /light_novels/new
  def new
    @light_novel = LightNovel.new
  end

  # GET /light_novels/1/edit
  def edit
  end

  # POST /light_novels or /light_novels.json
  def create
    @light_novel = LightNovel.new(light_novel_params)

    respond_to do |format|
      if @light_novel.save
        format.html { redirect_to light_novel_url(@light_novel), notice: "Light novel was successfully created." }
        format.json { render :show, status: :created, location: @light_novel }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @light_novel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /light_novels/1 or /light_novels/1.json
  def update
    respond_to do |format|
      if @light_novel.update(light_novel_params)
        format.html { redirect_to light_novel_url(@light_novel), notice: "Light novel was successfully updated." }
        format.json { render :show, status: :ok, location: @light_novel }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @light_novel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /light_novels/1 or /light_novels/1.json
  def destroy
    @light_novel.destroy!

    respond_to do |format|
      format.html { redirect_to light_novels_url, notice: "Light novel was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_light_novel
      @light_novel = LightNovel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def light_novel_params
      params.require(:light_novel).permit(:title, :author, :description, :release_date, :price)
    end
end
