class CreateMarkerCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :marker_categories do |t|
      t.references :marker, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
