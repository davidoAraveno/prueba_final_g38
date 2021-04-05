class ChangeColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :marker_categories, :type, :type_relation
  end
end
