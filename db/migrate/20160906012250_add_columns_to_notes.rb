class AddColumnsToNotes < ActiveRecord::Migration
  def change
    
    add_column :notes, :longitude, :float
    
    add_column :notes, :latitude, :float
  end
end
