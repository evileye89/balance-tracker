class Booking < ApplicationRecord
    belongs_to :category, foreign_key: :category_id
end
