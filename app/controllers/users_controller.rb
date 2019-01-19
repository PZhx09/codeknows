class UsersController < ApplicationController
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
    end
end
