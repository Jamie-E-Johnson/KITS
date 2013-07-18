class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :drop_down
      t.string :criteria

      t.timestamps
    end
  end
end
