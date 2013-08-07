class RemoveExtraColumns < ActiveRecord::Migration
  def change

   remove_column :interns, :home_city
    remove_column :interns, :home_state

  end
end
