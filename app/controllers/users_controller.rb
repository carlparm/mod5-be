class UsersController < ApplicationController
    
    def create
        user = User.find_by(spotify_id: params[:user][:spotify_id])
        if user
            render json: user.to_json()
        else
            user = User.new(name: params[:user][:name], spotify_id: params[:user][:spotify_id])
            user.save
            render json: user.to_json()
        end
    end

end
