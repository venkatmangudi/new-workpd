class CreatePostingTypes < ActiveRecord::Migration
  def change
    create_table :posting_types do |t|
      t.string :posting_type_name

      t.timestamps
    end
  end
end
