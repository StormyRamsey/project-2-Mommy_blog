class ArticlesController < ApplicationController
before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
before_filter :authenticate_user!, :except => [:show, :index]
  before_action :authenticate_user!
  def index
      @articles = Article.all
    end

  def show
    @article = Article.find(params[:id])
  end

  def new
      @article = Article.new
  end

    def edit
    @article = Article.find(params[:id])
    if @article.user == current_user
      @article
    else
      flash[:alert] = "Only the author of the post can edit"
      redirect_to articles_path
    end
    
  end

def update
  @article = Article.find(params[:id])
  if @article.update(article_params)
    redirect_to @article
  else
    render 'edit'
  end
end

  def create
    @article = Article.create!(article_params.merge(user: current_user))
    redirect_to article_path(@article)
  end

def destroy
  @article = Article.find(params[:id])
  if @article.user == current_user
  @article.destroy
else
  flash[:alert] = "Only the author of the post can delete"
end
  redirect_to articles_path
end

  private
    def article_params
      params.require(:article).permit(:title, :img_url, :text)
    end
end
