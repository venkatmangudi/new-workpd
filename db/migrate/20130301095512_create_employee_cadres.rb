class CreateEmployeeCadres < ActiveRecord::Migration
  def change
    create_table :employee_cadres do |t|
      t.string :employee_cadre_type

      t.timestamps
    end
  end
end
