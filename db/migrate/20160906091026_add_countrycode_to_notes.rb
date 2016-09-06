class AddCountrycodeToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :countrycode, :string
  end
end
