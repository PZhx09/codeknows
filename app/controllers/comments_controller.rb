class CommentsController < ApplicationController
<<<<<<< HEAD
    
    def create
    #发评论
    #puts "test111111111111111111111111111111111"
    #puts params[:article]
    #puts @article.title
    #puts params[:body]
    
    comment=Comment.new
    comment.body=params[:comment][:body]
    comment.article_id=params[:article]
    comment.user_id=current_user.id
    comment.likes_count=0
    comment.bad_content=0
    comment.save!
    redirect_to Article.find(params[:article])
    end
    
=======
  def create
    @micropost = Micropost.find(current_micropost.id)
    @comment = current_micropost.comments.build(comment_params)
    if @comment.save
      flash[:success] = "评论发布成功!"
      redirect_to @micropost
    else
      render 'static_pages/home'
    end
  end
  def destroy
    @comment.destroy
    flash[:success] = "评论删除成功!"
    redirect_to request.referrer || root_url
  end
  private
    def comment_params
      params.require(:comment).permit(:content)
    end
  
>>>>>>> production/master
end
