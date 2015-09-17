class CommentsController < ApplicationController
  before_filter :authenticate_user!, :only => [:create]

  def create
    @article = Article.find(params[:article_id])
    #@comment = @article.comments.create(comment_params)

    @comment = @article.comments.new(comment_params)
    @comment.commenter = current_user.username
    @comment.save

    redirect_to article_path(@article)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
