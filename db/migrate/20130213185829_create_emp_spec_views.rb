class CreateEmpSpecViews < ActiveRecord::Migration
  def change
    create_table :emp_spec_views do |t|

      t.timestamps
    end
  end
end
