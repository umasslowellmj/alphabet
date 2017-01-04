class EngWordsController < ApplicationController
  before_action :set_eng_word, only: [:show, :edit, :update, :destroy]

  def index
    @eng_words = EngWord.all
  end

  # GET /eng_words/1
  # GET /eng_words/1.json
  def show
  end

  # GET /eng_words/new
  def new
    @eng_word = EngWord.new
  end

  def edit
  end

  def create
    @eng_word = EngWord.new(eng_word_params)
    p eng_word_params
    respond_to do |format|
      if @eng_word.save
        format.html { redirect_to @eng_word, notice: 'Eng word was successfully created.' }
        format.json { render :show, status: :created, location: @eng_word }
      else
        format.html { render :new }
        format.json { render json: @eng_word.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @eng_word.update(eng_word_params)
        format.html { redirect_to @eng_word, notice: 'Eng word was successfully updated.' }
        format.json { render :show, status: :ok, location: @eng_word }
      else
        format.html { render :edit }
        format.json { render json: @eng_word.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @eng_word.destroy
    respond_to do |format|
      format.html { redirect_to eng_words_url, notice: 'Eng word was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eng_word
      @eng_word = EngWord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eng_word_params
      params.fetch(:eng_word, {}).permit(:word)
    end
end
