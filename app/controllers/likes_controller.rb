class LikesController < ApplicationController
    def new
        
        @comment=Comment.find(params[:comment_id])
        @article=Article.find(params[:article_id])
        
        like=Like.new
        
        like.user_id=current_user.id
        like.contentid=@comment.id
        like.likable_type='1'
        like.save!
        
        
        redirect_to @article
        
    end
end
