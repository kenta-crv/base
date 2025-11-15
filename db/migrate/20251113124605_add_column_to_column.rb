class AddColumnToColumn < ActiveRecord::Migration[5.2]
  def change
    add_column :columns, :file, :string
  end
end
