class Balance < ApplicationRecord
    validates :balance, presence: true
    validates :year, presence: true
    validates :month, presence: true
end
