class UserArtistsController < ApplicationController

    def destroy
        userartist = UserArtist.find(params[:id])
        userartist.destroy
    end

end
