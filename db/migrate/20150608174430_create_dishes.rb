class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.integer :course_id
      t.string :name
      t.decimal :price
      t.string :description

      t.timestamps null: false
    end
  end
end
