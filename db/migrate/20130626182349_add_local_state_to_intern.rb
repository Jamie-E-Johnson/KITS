class AddLocalStateToIntern < ActiveRecord::Migration
  def change
    add_column :interns,:local_state, :string

  end
end
