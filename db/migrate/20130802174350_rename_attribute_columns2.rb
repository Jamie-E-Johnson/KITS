class RenameAttributeColumns2 < ActiveRecord::Migration
  def change


    rename_column :interns,:city,:local_city
    rename_column :interns,:state,:local_state
  end
end
