class Account < ApplicationRecord
    has_many :balances, dependent: :destroy
    has_many :bookings, dependent: :destroy

    validates :name, presence: true
end
