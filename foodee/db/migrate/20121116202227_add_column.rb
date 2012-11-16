class AddColumn < ActiveRecord::Migration
  add_column :dishes, :restaurant_id, :integer
end
