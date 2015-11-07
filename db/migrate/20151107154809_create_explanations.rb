class CreateExplanations < ActiveRecord::Migration
  def change
    create_table :explanations do |t|
      t.string :text
      t.string :category

      t.timestamps null: false
    end
  end
end
