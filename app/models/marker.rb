class Marker < ApplicationRecord
    has_many :categories, through: :marker_categories
    has_many :marker_categories
end
