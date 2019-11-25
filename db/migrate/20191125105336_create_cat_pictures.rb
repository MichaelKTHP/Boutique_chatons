class CreateCatPictures < ActiveRecord::Migration[5.2]
  def change
    create_table :cat_pictures do |t|

      t.timestamps
    end
  end
end
