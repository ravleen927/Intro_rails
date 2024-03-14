class ArticlesController < ApplicationController
  
  def show
    @article = Article.find(params[:id])
    @description = @article.description
  end
end
