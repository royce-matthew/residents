class CreateResidents < ActiveRecord::Migration
  def change
    create_table :residents do |t|
      t.string :name
      t.string :location
      t.string :room
      t.string :id_num

      t.timestamps null: false
    end
  end
end
