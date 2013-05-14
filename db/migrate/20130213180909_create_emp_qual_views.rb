class CreateEmpQualViews < ActiveRecord::Migration
  def change
    create_table :emp_qual_views do |t|

      t.timestamps
    end
  end
end
