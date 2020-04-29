class EventsController < ApplicationController

    def create
        event = Event.find_by(ticketmaster_id: params[:event][:ticketmaster_id])
        if event
            userevent = UserEvent.find_by(user_id: params[:user][:id], event_id: event.id)
            if userevent == null
                UserEvent.create(user_id: params[:user][:id], event_id: event.id)
            end
        else
            event = Event.create(name: params[:event][:name], ticketmaster_id: params[:event][:ticketmaster_id], location: params[:event][:location], img_url: params[:event][:img_url], date: params[:event][:date], google_key: params[:event][:google_key], url: params[:event][:url])
            UserEvent.create(user_id: params[:user][:id], event_id: event.id)
        end
    end

end
