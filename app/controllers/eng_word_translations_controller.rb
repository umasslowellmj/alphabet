class EngWordTranslationsController < ApplicationController
  before_action :set_eng_word_translation, only: [:show, :edit, :update, :destroy]

  def index
    @eng_word_translations = EngWordTranslation.all
  end

  def show
  end

  def new
    @eng_word = EngWord.find(params[:eng_word_id])
    @eng_word_translation = EngWordTranslation.new
  end

  def edit
    @eng_word = EngWord.find(params[:eng_word_id])
  end

  def create
    @eng_word = EngWord.find(params[:eng_word_id])
    @eng_word_translation = EngWordTranslation.new(eng_word_translation_params)
    @eng_word_translation.eng_word = @eng_word
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

  def destroy
    @eng_word_translation.destroy
    respond_to do |format|
      format.html { redirect_to eng_word_translations_url, notice: 'Eng word translation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_eng_word_translation
      @eng_word_translation = EngWordTranslation.find(params[:id])
    end

    def eng_word_translation_params
      params.fetch(:eng_word_translation, {})
    end
end
