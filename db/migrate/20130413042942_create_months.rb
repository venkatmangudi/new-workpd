class CreateMonths < ActiveRecord::Migration
  def change
    create_table :months do |t|
      t.string :month_name

      t.timestamps
    end
  end
end
