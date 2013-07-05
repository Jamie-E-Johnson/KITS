class CreateInternships < ActiveRecord::Migration
  def change
    create_table :internships do |t|
      t.string :season
      t.string :year
      t.string :program
      t.string :nasa_internships

      t.timestamps
    end
  end
end
