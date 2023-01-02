class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    render json: @articles
  end

  def new
    @article = Article.new
    render json: @article
  end

  def show
    @article = Article.find(params[:id])
    render json: @article
  end

  def destroy
    @article = Article.destroy(params[:id])
    render json: @article
  end

  def edit
    @article = Article.update(params[:id])
    render json: @article
  end
end
