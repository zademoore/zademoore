class CreatePrjcts < ActiveRecord::Migration[5.0]
  def change
    create_table :prjcts do |t|
      t.string :title
      t.text :description
      t.date :deight

      t.timestamps
    end
  end
end
