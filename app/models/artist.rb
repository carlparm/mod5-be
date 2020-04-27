class Artist < ApplicationRecord
    has_may :user_artists
    has_may :users, through: :user_artists
end
