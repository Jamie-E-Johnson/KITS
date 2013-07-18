class RenameAttributeToSearchAttributes < ActiveRecord::Migration
  def self.up
    rename_table :attributes, :search_attributes
  end

  def self.down
    rename_table :search_attributes, :attributes
  end
end
