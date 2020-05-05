class UserEventsController < ApplicationController

    def destroy
        userevent = UserEvent.find(params[:id])
        userevent.destroy
    end

end
