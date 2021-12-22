class Account < ApplicationRecord
    belongs_to :balance, foreign_key: :balance_id

    includes(:balance)
end
