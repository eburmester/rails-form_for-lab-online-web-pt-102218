class CreateSchoolClass < ActiveRecord::Migration
  create_table :school_class do |t|
    t.string :title
    t.integer :room_number 
  end
end