class AddThumbImageToBooks < ActiveRecord::Migration
  def change
    add_column :books, :thumb_image, :string
  end
end
