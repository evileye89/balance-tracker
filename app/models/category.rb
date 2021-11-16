class Category < ApplicationRecord
    belongs_to :booking
    
    enum type: [:fix, :flex]
end
