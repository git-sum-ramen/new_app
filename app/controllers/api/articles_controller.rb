class Api::ArticlesController < ApplicationController
  def index
    # p Rails.application.credentials.news_api
    @articles = HTTP.get("http://newsapi.org/v2/everything?q=apple&from=2020-11-24&to=2020-11-24&sortBy=popularity&apiKey=#{Rails.application.credentials.news_api[:api_key]}").parse
    render 'index.json.jb'
  end
end


