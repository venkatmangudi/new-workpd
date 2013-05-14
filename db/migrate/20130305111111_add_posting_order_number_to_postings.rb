class AddPostingOrderNumberToPostings < ActiveRecord::Migration
  def change
    add_column :postings, :posting_order_number, :string
  end
end
