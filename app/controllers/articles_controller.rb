class ArticlesController < ApplicationController
  include ArticlesHelper

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    a= Article.create(create_article_params)
    flash.notice = "Article with title '#{a.title}' created!"
    redirect_to articles_path
  end

  def destroy
    flash.notice = "Article '#{Article.find(params[:id]).title}' destroyed!"
    Article.find(params[:id]).destroy

    redirect_to articles_path
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(create_article_params)

    flash.notice = "Article '#{@article.title}' updated!"

    redirect_to article_path(@article)
  end


private


end
