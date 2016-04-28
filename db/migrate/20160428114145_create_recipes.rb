class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.references :user
      t.string :title, null: false
      t.string :description, null: false
      t.text :longform_instructions, null: false
      t.string :category, null: false

      t.timestamps null: false
    end
  end
end
