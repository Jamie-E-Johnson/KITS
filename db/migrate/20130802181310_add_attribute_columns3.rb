class AddAttributeColumns3 < ActiveRecord::Migration
  def change

    add_column :interns,:home_city, :string
    add_column :interns, :home_state, :string
  end
end
