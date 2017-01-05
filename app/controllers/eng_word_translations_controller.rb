class EngWordTranslationsController < ApplicationController
  before_action :set_eng_word_translation, only: [:show, :edit, :update, :destroy]

  # GET /eng_word_translations
  # GET /eng_word_translations.json
  def index
    @eng_word_translations = EngWordTranslation.all
  end

  # GET /eng_word_translations/1
  # GET /eng_word_translations/1.json
  def show
  end

  # GET /eng_word_translations/new
  def new
    @eng_word_translation = EngWordTranslation.new
  end

  # GET /eng_word_translations/1/edit
  def edit
  end

  # POST /eng_word_translations
  # POST /eng_word_translations.json
  def create
    @eng_word_translation = EngWordTranslation.new(eng_word_translation_params)

    respond_to do |format|
      if @eng_word_translation.save
        format.html { redirect_to @eng_word_translation, notice: 'Eng word translation was successfully created.' }
        format.json { render :show, status: :created, location: @eng_word_translation }
      else
        format.html { render :new }
        format.json { render json: @eng_word_translation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eng_word_translations/1
  # PATCH/PUT /eng_word_translations/1.json
  def update
    respond_to do |format|
      if @eng_word_translation.update(eng_word_translation_params)
        format.html { redirect_to @eng_word_translation, notice: 'Eng word translation was successfully updated.' }
        format.json { render :show, status: :ok, location: @eng_word_translation }
      else
        format.html { render :edit }
        format.json { render json: @eng_word_translation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eng_word_translations/1
  # DELETE /eng_word_translations/1.json
  def destroy
    @eng_word_translation.destroy
    respond_to do |format|
      format.html { redirect_to eng_word_translations_url, notice: 'Eng word translation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eng_word_translation
      @eng_word_translation = EngWordTranslation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eng_word_translation_params
      params.fetch(:eng_word_translation, {})
    end
end
