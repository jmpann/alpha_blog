class ArticlesController < ApplicationController

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(article_params)
    redirect_to @article
  end

  def show

  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end

end
