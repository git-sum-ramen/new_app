class Api::ArticlesController < ApplicationController
  def index
    render 'index.json.jb'
  end
end
