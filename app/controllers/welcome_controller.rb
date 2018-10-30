class WelcomeController < ApplicationController
  def index
    @word_search_results = WordSearchFacade.new(params[:word]) if params[:word]
  end
end
