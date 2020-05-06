class UserArtistsController < ApplicationController

    def destroy
        userartist = UserArtist.find_by(user_id: params[:user][:id], artist_id: params[:artist][:id])
        userartist.destroy
    end

end
