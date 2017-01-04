class EngWordsControllersController < ApplicationController
  before_action :set_eng_words_controller, only: [:show, :edit, :update, :destroy]

  # GET /eng_words_controllers
  # GET /eng_words_controllers.json
  def index
    @eng_words_controllers = EngWordsController.all
  end

  # GET /eng_words_controllers/1
  # GET /eng_words_controllers/1.json
  def show
  end

  # GET /eng_words_controllers/new
  def new
    @eng_words_controller = EngWordsController.new
  end

  # GET /eng_words_controllers/1/edit
  def edit
  end

  # POST /eng_words_controllers
  # POST /eng_words_controllers.json
  def create
    @eng_words_controller = EngWordsController.new(eng_words_controller_params)

    respond_to do |format|
      if @eng_words_controller.save
        format.html { redirect_to @eng_words_controller, notice: 'Eng words controller was successfully created.' }
        format.json { render :show, status: :created, location: @eng_words_controller }
      else
        format.html { render :new }
        format.json { render json: @eng_words_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eng_words_controllers/1
  # PATCH/PUT /eng_words_controllers/1.json
  def update
    respond_to do |format|
      if @eng_words_controller.update(eng_words_controller_params)
        format.html { redirect_to @eng_words_controller, notice: 'Eng words controller was successfully updated.' }
        format.json { render :show, status: :ok, location: @eng_words_controller }
      else
        format.html { render :edit }
        format.json { render json: @eng_words_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eng_words_controllers/1
  # DELETE /eng_words_controllers/1.json
  def destroy
    @eng_words_controller.destroy
    respond_to do |format|
      format.html { redirect_to eng_words_controllers_url, notice: 'Eng words controller was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eng_words_controller
      @eng_words_controller = EngWordsController.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eng_words_controller_params
      params.fetch(:eng_words_controller, {})
    end
end
