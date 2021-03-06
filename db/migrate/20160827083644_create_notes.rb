class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.string :location
      t.text :text

      t.timestamps null: false
    end

    add_attachment :notes, :asset
  end
end
