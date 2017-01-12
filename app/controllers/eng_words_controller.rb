module MerriamWebsterAPI
  MERRIAM_WEBSTER_KEY = ENV["MERRIAM_WEBSTER_KEY"]
  BASE_URL = "http://www.dictionaryapi.com/"
  def self.get_data(word)
    conn = Faraday.new(:url => BASE_URL) do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
      faraday.response :xml,  :content_type => /\bxml$/
    end
    xml_response = conn.get 'api/v1/references/collegiate/xml/' + word, {:key => MERRIAM_WEBSTER_KEY}
    definition = xml_response.body["entry_list"]["entry"][0]
    eng_word = {
      "word": definition["ew"],
      "pronunciation": definition["pr"],
      "wav_url": "http://media.merriam-webster.com/soundc11/" + definition["sound"]["wav"][0] + "/" + definition["sound"]["wav"],
      "type": definition["fl"],
      "def": definition["def"]["dt"].kind_of?(Array) ? definition["def"]["dt"][0]["__content__"] : definition["def"]["dt"]["__content__"]
    }
  end
end

class EngWordsController < ApplicationController
  before_action :set_eng_word, only: [:show, :edit, :update, :destroy]

  def search
    @eng_words = EngWord.where(:word => params[:word])
    @merriam_webster = MerriamWebsterAPI.get_data(params[:word])
    respond_to do |format|
      format.html { render :search }
    end
  end

  def index
    @eng_words = EngWord.first(500)
    @translated_words = @eng_words.select { |w| w.eng_word_translations.count != 0}.last(100)
    @untranslated_words = @eng_words.select { |w| w.eng_word_translations.count == 0}.last(100)
  end

  def show
    @eng_word_translations = @eng_word.eng_word_translations
  end

  def new
    @eng_word = EngWord.new
    @eng_word.eng_word_translations.build
  end

  def create
    if EngWord.exists?(word: eng_word_params[:word])
      @eng_word = EngWord.where(word: eng_word_params[:word]).first
      @eng_word_translation = EngWordTranslation.new(eng_word_params[:eng_word_translations_attributes]['0'])
      @eng_word_translation.eng_word_id = @eng_word.id
      @eng_word_translation.user_id = current_user.id
      respond_to do |format|
        if @eng_word_translation.save
          format.html { redirect_to @eng_word_translation, notice: 'English word translation was successfully created.' }
          format.json { render :show, status: :created, location: @eng_word_translation }
        else
          format.html { render :new }
          format.json { render json: @eng_word.errors, status: :unprocessable_entity }
        end
      end
    else
      @eng_word = EngWord.new(eng_word_params)
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
  end

  private

    def set_eng_word
      @eng_word = EngWord.find(params[:id])
    end

    def eng_word_params
      params.fetch(:eng_word, {}).permit(:word, eng_word_translations_attributes: [:id, :definition, :word_type, :sample_sentence, :sentence_translation, :eng_word_id, :user_id])
    end
end
