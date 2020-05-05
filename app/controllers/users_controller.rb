class UsersController < ApplicationController
    
    def show
        user = User.find(params[:id])
        render json: user.to_json(
            :include => {:events => {:except => [:created_at, :updated_at]},
                            :artists => {:except => [:created_at, :updated_at]}
            })
    end


    def create
        user = User.find_by(spotify_id: params[:user][:spotify_id])
        if user
            render json: user.to_json(
                :include => {:events => {:except => [:created_at, :updated_at]},
                :artists => {:except => [:created_at, :updated_at]}
            })
        else
            user = User.new(name: params[:user][:name], spotify_id: params[:user][:spotify_id])
            user.save
            render json: user.to_json()
        end
    end

end
