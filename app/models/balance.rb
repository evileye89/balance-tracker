class Balance < ApplicationRecord
    belongs_to :account, foreign_key: :account_id
    
    includes(:account)
    
    validates :balance, presence: true
    validates :year, presence: true
    validates :month, presence: true
end
