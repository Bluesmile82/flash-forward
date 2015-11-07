class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :comment
      t.integer :order
      t.string :category

      t.timestamps null: false
    end
  end
end
