class CreateSanctionedByDesignations < ActiveRecord::Migration
  def change
    create_table :sanctioned_by_designations do |t|

      t.timestamps
    end
  end
end
