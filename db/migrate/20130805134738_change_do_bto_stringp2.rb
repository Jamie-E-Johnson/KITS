class ChangeDoBtoStringp2 < ActiveRecord::Migration
  def change

    change_column :interns, :dob, :date
  end
end
