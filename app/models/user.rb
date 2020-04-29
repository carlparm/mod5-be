class User < ApplicationRecord
    has_many :user_artists
    has_many :user_events
    has_many :artists, through: :user_artists
    has_many :events, through: :user_events
end
