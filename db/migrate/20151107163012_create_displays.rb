class CreateDisplays < ActiveRecord::Migration
  def change
    create_table :displays do |t|
      t.string :category
      t.integer :last_content_id

      t.timestamps null: false
    end
  end
end
