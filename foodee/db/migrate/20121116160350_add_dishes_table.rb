class AddDishesTable < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :name
      t.decimal :cost
      t.string :photo
    end
  end
end
