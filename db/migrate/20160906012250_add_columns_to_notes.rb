class AddColumnsToNotes < ActiveRecord::Migration
  def change
    remove_column :notes, :longitude, :float
    add_column :notes, :longitude, :float
    remove_column :notes, :latitude, :float
    add_column :notes, :latitude, :float
  end
end
