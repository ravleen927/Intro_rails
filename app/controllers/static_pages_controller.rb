class StaticPagesController < ApplicationController
  def home
    @categories = Category.all
    @articles = Article.includes(:author, :publisher, :countries)

    if params[:category_id].present?
      @articles = @articles.joins(:article_categories).where(article_categories: { category_id: params[:category_id] })
    end

    if params[:search].present?
      @articles = @articles.where("LOWER(title) LIKE ?", "%#{params[:search].downcase}%")
    end

    @articles = @articles.page(params[:page]).per(8) 

    @countries = Country.joins(:article_countries).distinct
  end

  def about
  end
end
