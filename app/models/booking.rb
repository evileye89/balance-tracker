class Booking < ApplicationRecord
    belongs_to :category, foreign_key: :category_id
    belongs_to :account, foreign_key: :account_id

    includes(:category)
    includes(:account)

    validates :amount, presence: true
end
