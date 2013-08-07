class ChangeDoBtoString < ActiveRecord::Migration
  def change

    change_column :interns, :dob, :string


  end
end
