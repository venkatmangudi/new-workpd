class CreateEmpTenureByBands < ActiveRecord::Migration
  def change
    create_table :emp_tenure_by_bands do |t|

      t.timestamps
    end
  end
end
