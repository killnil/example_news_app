class Api::ArticlesController < ApplicationController
  def index
    search_term = params[:search]
    response = HTTP.get("https://newsapi.org/v2/everything?q=#{ search_term }&apiKey=#{ ENV["API_KEY"] }")
    render json: response.parse
  end
end
