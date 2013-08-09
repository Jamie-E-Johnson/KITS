class CreateInterns < ActiveRecord::Migration
  def change
    create_table :interns do |t|
      t.string :first_name
      t.string :middle_initial
      t.string :last_name
      t.string :home_city
      t.string :home_state
      t.string :local_city
      t.string :local_state
      t.string :classification
      t.date :dob
      t.string :ethnicity
      t.string :major
      t.string :home_congress_district
      t.string :school_congress_district

      t.timestamps
    end
  end
end
