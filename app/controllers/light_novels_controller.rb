class LightNovelsController < ApplicationController
  before_action :set_light_novel, only: %i[show edit update destroy]

  # GET /light_novels
  def index
    @light_novels = LightNovel.all
  end

  # GET /light_novels/1
  def show; end

  # GET /light_novels/new
  def new
    @light_novel = LightNovel.new
  end

  # GET /light_novels/1/edit
  def edit; end

  # POST /light_novels
  def create
    @light_novel = LightNovel.new(light_novel_params)

    if @light_novel.save
      redirect_to @light_novel, notice: "Light novel was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /light_novels/1
  def update
    if @light_novel.update(light_novel_params)
      redirect_to @light_novel, notice: "Light novel was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /light_novels/1
  def destroy
    @light_novel.destroy
    redirect_to light_novels_url, notice: "Light novel was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_light_novel
    @light_novel = LightNovel.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def light_novel_params
    params.require(:light_novel).permit(:title, :author, :description, :release_date, :genre,
                                        :rating)
  end
end
