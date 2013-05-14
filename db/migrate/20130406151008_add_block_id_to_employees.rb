class AddBlockIdToEmployees < ActiveRecord::Migration
  def change
    add_column :employees, :block_id, :integer
  end
end
