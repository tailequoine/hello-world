class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :category_id
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
