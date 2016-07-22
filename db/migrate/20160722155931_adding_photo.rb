class AddingPhoto < ActiveRecord::Migration
  def change
  	  	add_column :residents, :photo_link, :string

  end
end
