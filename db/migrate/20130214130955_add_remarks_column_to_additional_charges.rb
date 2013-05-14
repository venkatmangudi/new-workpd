class AddRemarksColumnToAdditionalCharges < ActiveRecord::Migration
  def change
    add_column :additional_charges, :remarks, :text
  end
end
