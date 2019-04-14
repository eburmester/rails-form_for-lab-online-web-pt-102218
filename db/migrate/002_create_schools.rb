class CreateSchools < ActiveRecord::Migration
  create_table :school do |t|
    t.string :title
    t.integer :room_number 
  end
end