class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :update, :destroy]

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
  end

  def update
    @article = Article.update(params[:id])
    if @article.update
      render json: @article, status: :created
    else
      render json @article.errors, status: :unprocessable_entity
    end
  end


  private


  def set_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:comemntaire, :titre)
  end
end
