class CreateEmpGenViews < ActiveRecord::Migration
  def change
    create_table :emp_gen_views do |t|

      t.timestamps
    end
  end
end
