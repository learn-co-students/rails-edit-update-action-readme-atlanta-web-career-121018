class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update]

  def index
    @articles = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.create(title: params[:article][:title], description: params[:article][:description])
    redirect_to article_path(@article)
  end

  def edit
    render 'new'
  end

  def update
    @article.update(title: params[:article][:title], description: params[:article][:description])
    redirect_to article_path(@article)
  end

  private

    def set_article
      @article = Article.find(params[:id])
    end

end
