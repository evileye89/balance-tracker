class Category < ApplicationRecord
    enum type: [:fix, :flex]

    validates :name, presence: true
end
