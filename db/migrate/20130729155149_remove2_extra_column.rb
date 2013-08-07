class Remove2ExtraColumn < ActiveRecord::Migration
  def change

    remove_column :interns, :minor

  end
end
