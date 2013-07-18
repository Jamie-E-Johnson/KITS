class RemoveCriteriaFromSearch < ActiveRecord::Migration
  def change
    remove_column :searches, :criteria, :string
  end
end
