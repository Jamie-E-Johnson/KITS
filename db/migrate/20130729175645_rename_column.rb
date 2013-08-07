class RenameColumn < ActiveRecord::Migration
  def change

      rename_column :interns,:local_city,:city
      rename_column :interns,:local_state,:state

  end
end
