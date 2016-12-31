class EngWordsController < ApplicationController
  def create
    puts params
  end
  def new
    @eng_word = EngWord.new
  end
end
