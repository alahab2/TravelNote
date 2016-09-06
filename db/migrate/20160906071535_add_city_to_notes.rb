class AddCityToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :city, :string
  end
end
