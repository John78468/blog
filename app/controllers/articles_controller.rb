class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end

  def destroy
    @article = Article.destroy(params[:id])
  end

  def edit
    @article = Article.update(params[:id])
  end
end
