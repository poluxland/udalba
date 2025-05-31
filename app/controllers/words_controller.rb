class WordsController < ApplicationController
  def index
    @words = Word.order(:created_at)
  end

  def create
    Word.create(content: params[:content].strip.downcase)
    redirect_to words_path
  end
end
