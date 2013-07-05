class AddSchoolToIntern < ActiveRecord::Migration
  def change
    add_column :interns,:school, :string
  end
end
