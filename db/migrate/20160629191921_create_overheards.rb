class CreateOverheards < ActiveRecord::Migration
  def change
    create_table :overheards do |t|
      t.string :title
      t.string :author
      t.string :location
      t.text :oh_entry

      t.timestamps null: false
    end
  end
end
