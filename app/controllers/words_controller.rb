class WordsController < ApplicationController
  def index
    @word_search_results = WordSearchFacade.new(params[:word])
    redirect_to '/'
  end
end
