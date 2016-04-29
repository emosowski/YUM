class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.references :recipe
      t.string :quantity, null: false
      t.string :name, null: false
      t.string :unit
      t.boolean :checked

      t.timestamps null: false
    end
  end
end
