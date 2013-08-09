class AddCommentsToInterns < ActiveRecord::Migration
  def change

    add_column :interns, :comments, :string
  end
end
