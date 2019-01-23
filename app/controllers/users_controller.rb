class UsersController < ApplicationController
<<<<<<< HEAD
    def show 
        @user=User.find(params[:id])
        #puts @user.name
    end
    
    def edit
        if params[:name].nil?
            @user=User.find(params[:id])
        else
            @user=User.find(params[:id])
            @user.name=params[:name]
            @user.country=params[:country]
            @user.city=params[:city]
            @user.about=params[:about]
            @user.save!
        end
=======
  before_action :logged_in_user, only: [:index, :edit, :update]
  before_action :correct_user, only: [:edit, :update]
  def index
    @users = User.paginate(page: params[:page])
  end
  
  def new
    @user = User.new
  end
  
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      # UserMailer.account_activation(@user).deliver_now
      # flash[:info] = "请查收邮件来激活你的账户"
      # redirect_to root_url
      log_in @user
      flash[:success] = "欢迎来到程序之道!"
      redirect_to @user
    else
      render 'new'
    end
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "详情更新"
      redirect_to @user
    else
      render 'edit'
    end
  end
  
  def following
    @title = "正在关注"
    @user  = User.find(params[:id])
    @users = @user.following.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "关注者"
    @user  = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end
  
  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end
  
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless @user == current_user
>>>>>>> production/master
    end
end
