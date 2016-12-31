class EngWordsController < ApplicationController
  def create
    @eng_word = EngWord.new({:word => eng_word_params[:word]})
    if @eng_word.save
      @eng_words_translation = EngWordTranslation.new
      @eng_words_translation[:definition] = eng_word_params[:eng_word_translation][:definition]
      @eng_words_translation[:word_type] = eng_word_params[:eng_word_translation][:word_type]
      @eng_words_translation[:sample_sentence] = eng_word_params[:eng_word_translation][:sample_sentence]
      @eng_words_translation[:sentence_translation] = eng_word_params[:eng_word_translation][:sentence_translation]
      @eng_words_translation[:eng_word_id] = @eng_word.id;
      if @eng_words_translation.save
        redirect_to @eng_word, notice: 'Word was successfully created.'
      else
        render :new
      end
    else
      render :new
    end
  end

  def show

  end

  def new
    @eng_word = EngWord.new
  end

  private

  def eng_word_params
    params.require(:eng_word).permit(:word, eng_word_translation:[:definition, :word_type, :sample_sentence, :sentence_translation])
  end

end
