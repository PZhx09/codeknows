class ArticlesController < ApplicationController
    def index
        #这里要根据选择的tags来
        #翻页等等再做
        if params[:tags]
            puts "有标签！！！！！！！！！！！！！！！！！！！！"
            @articles=Article.where(:tags=>params[:tags])
        else
            puts "无标签！！！！！！！！！！！！！！！！！！！！"
            #无标签按照热度排名
            @articles=Article.all
            @articles=@articles.ordder(:views_count)
        end
        
    end
    
    def show
        @article = Article.find(params[:id])
        @article.views_count+=1
        @article.save!
    end
    
    def create
        
        #@article=Article.new(params[:article])
        #puts @article.tags

        
        #puts params[:tags]
        #puts "---------------------------------"
        #puts params[:article][:title]
        #puts "---------------------------------"
        #puts params[:body]
        #puts "---------------------------------"
        
        #初始化article！！！！！！！！！！！！！！！
        @article=Article.new
        @article.title=params[:article][:title]
        @article.body=params[:article][:body]
        @article.tags=params[:tags]
        @article.user_id=current_user.id
        @article.likes_count=0
        @article.views_count=0
        @article.bad_count=0
        @article.spam_detected=false
        @article.save!
        
        redirect_to @article
        #这里加点验证吧    最后再写
    end
end
