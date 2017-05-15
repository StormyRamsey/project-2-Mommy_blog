class CommentsController < ApplicationController
before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]

def new
  @comment = Comment.new
end

  def create
   @article = Article.find(params[:article_id])
   @comment = @article.comments.create(comment_params)
   redirect_to article_path(@article)
 end

 def show
     @article = Article.find(params[:id])

 end

 

 def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

 private
   def comment_params
     params.require(:comment).permit(:commenter, :body)
   end


end
