class ArtistsController < ApplicationController

    def create
        artist = Artist.find_by(spotify_id: params[:artist][:spotify_id])
        if artist
            userartist = UserArtist.find_by(user_id: params[:user][:id], artist_id: artist.id)
            if userartist == null
                UserArtist.create(user_id: params[:user][:id], artist_id: artist.id)
            end
        else
            artist = Artist.create(name: params[:artist][:name], spotify_id: params[:artist][:spotify_id], img_url: params[:artist][:img_url], genre: params[:artist][:genre], popularity: params[:artist][:popularity], spotify_uri: params[:artist][:spotify_uri])
            UserArtist.create(user_id: params[:user][:id], artist_id: artist.id)
        end
    end

end
