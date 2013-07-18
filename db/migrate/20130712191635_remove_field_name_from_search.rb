class RemoveFieldNameFromSearch < ActiveRecord::Migration
  def change
    remove_column :searches, :drop_down, :string
  end
end
