class RemovePictureFromImage < ActiveRecord::Migration
  def change
    remove_column :images, :picture
  end
end
