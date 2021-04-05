class AddTypeToMarkerCategories < ActiveRecord::Migration[5.2]
  def change
    add_column :marker_categories, :type, :string
  end
end
