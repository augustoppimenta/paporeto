class ArticlesController < ApplicationController

  before_action :set_category

  def index
    @articles = @category.articles.limit(8)
  end

  def show
    @article = Article.find(params[:id])
    @related_articles = @article.related_articles
  end

  private
    def set_category
      @category = Category.find(params[:category_id])
    end
end
