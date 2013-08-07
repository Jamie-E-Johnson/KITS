class AddHomeCongDistrict < ActiveRecord::Migration
  def change
    add_column :interns,:home_congress_district, :string

  end
end
