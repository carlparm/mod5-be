class UsersController < ApplicationController
    
    def create
        user = User.find_by(spotify_id: params[:spotify_id])
        if user
            render json: user.to_json()
        else
            user = User.new(name: params[:name], spotify_id: params[:spotify_id])
            user.save
            render json: user.to_json()
        end
    end



    private
    def user_params
        params.require(:user).permit(:name, :github_profile, :cohort_name, :cohort_start, :username, :password)
    end

end
