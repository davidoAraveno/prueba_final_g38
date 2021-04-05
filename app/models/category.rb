class Category < ApplicationRecord
    has_many :markers, through: :marker_categories
    has_many :marker_categories
end
