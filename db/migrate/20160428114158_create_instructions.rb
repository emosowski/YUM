class CreateInstructions < ActiveRecord::Migration
  def change
    create_table :instructions do |t|
      t.references :recipe
      t.string :step, null: false
      t.boolean :status, null: false

      t.timestamps null: false
    end
  end
end
