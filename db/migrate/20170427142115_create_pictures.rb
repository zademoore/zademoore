class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
   		t.references :prjct, foreign_key: true
     	t.string :image
      	t.text :caption

      	t.timestamps
    end
  end
end
