class WordsController < ApplicationController
  def index
    require "pry"; binding.pry
    @word_search_results = WordSearchFacade.new(params[:word])
    redirect_to '/'
  end
end
