class CreateAttributes < ActiveRecord::Migration
  def change
    create_table :attributes do |t|
      t.integer :search_id
      t.string :drop_down
      t.string :criteria

      t.timestamps
    end
  end
end
