class Booking < ApplicationRecord
    belongs_to :category, foreign_key: :category_id

    includes(:category)

    validates :amount, presence: true
end
