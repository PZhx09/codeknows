class CommentsController < ApplicationController
    
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
    
end
