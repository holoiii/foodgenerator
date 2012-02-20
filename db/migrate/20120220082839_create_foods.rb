class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :cost
      t.integer :servings
      t.integer :calories
      t.boolean :vegetarian
      t.timestamps
    end
  end
end
