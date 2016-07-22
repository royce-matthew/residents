class CreateLogs < ActiveRecord::Migration
  def change
    create_table :logs do |t|
      t.datetime :time
      t.text :comment

      t.timestamps null: false
    end
  end
end
