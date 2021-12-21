class Category < ApplicationRecord
    enum type: [:fix, :flex]
end
