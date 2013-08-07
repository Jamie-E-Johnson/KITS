class RenameAttributeToDob < ActiveRecord::Migration
  def change

    rename_column :interns,:age, :dob;

  end
end
