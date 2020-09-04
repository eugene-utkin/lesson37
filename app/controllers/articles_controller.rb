class ArticlesController < ApplicationController

  def index
    @articles = Article.all.order("created_at DESC")
  end

  def new

  end

  def create
    @article = Article.new(articles_params)
    if @article.valid?
      @article.save
      @articles = Article.all.order("created_at DESC")
      render action: 'index'
    else
      render action: 'new'
    end
  end

  def show
    article_id = params[:id]
    @article = Article.where(id: article_id)[0]
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find_by_id(params[:id])
    @article.update(articles_params)
    render action: 'show'
  end

  private

  def articles_params
    params.require(:article).permit(:title, :text)
  end

end
