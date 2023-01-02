class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    render json: @articles
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      render json: @article, status: :created
    else
      render json @article.errors, status: :unprocessable_entity
    end
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
