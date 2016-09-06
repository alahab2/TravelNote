class AddCountryToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :country, :string
  end
end
