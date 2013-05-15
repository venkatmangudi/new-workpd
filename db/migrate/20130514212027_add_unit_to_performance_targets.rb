class AddUnitToPerformanceTargets < ActiveRecord::Migration
  def change
    add_column :performance_targets, :unit, :string
  end
end
