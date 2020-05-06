class UserEventsController < ApplicationController

    def destroy
        userevent = UserEvent.find_by(user_id: params[:user][:id], event_id: params[:event][:id])
        userevent.destroy
    end

end
