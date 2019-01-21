
class DeviseCustomed::RegistrationsController < Devise::RegistrationsController  
  before_filter :configure_permitted_parameters,if: :devise_controller?
  
  def configure_permitted_parameters
    #devise_parameter_sanitizer.for(:sign_up).push(:email,:name, :password, :password_confirmation)
    
   devise_parameter_sanitizer.permit(:sign_up){ |u| u.permit(:email, :name, :password, :password_confirmation) }
  end
  
  def new
    super
  end
 
  def create
    # add custom create logic here
    #puts params[:user][:email]
    puts params[:user][:name]
    puts "---------------------------------------------------333"
    #super
    
    super do |resource|
      resource.name = params[:user][:name]
    end
    
    @thisUser=User.where(:email=>params[:user][:email]).first
    if @thisUser.nil?
      puts "错误！！！！！！！！！！！"
    else
      #puts @thisUser.name
      #puts "--------------------------22"
      #
      @thisUser.update(name: params[:user][:name])
      #@thisUser.save!
      #puts @thisUser.name
      #puts resource.name
      #puts "--------------------------11"
    end
  end
 
  def update
    super
  end
end