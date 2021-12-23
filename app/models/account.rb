class Account < ApplicationRecord
    has_many :balances, dependent: :destroy

    validates :name, presence: true
end
