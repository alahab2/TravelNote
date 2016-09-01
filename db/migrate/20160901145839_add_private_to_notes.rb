class AddPrivateToNotes < ActiveRecord::Migration
  def change
    add_column :notes, :private, :boolean, default: false
  end
end
