class RenameCongDistrictp2 < ActiveRecord::Migration
  def change

    rename_column :interns,:congress_district, :school_congress_district
  end
end
