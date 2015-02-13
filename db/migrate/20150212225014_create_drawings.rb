class CreateDrawings < ActiveRecord::Migration
  def change
    create_table :drawings do |t|
      t.string :name
      t.text :drawing

      t.timestamps null: false
      t.references :users
    end
  end
end
