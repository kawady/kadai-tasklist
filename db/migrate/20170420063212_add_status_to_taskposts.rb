class AddStatusToTaskposts < ActiveRecord::Migration[5.0]
  def change
    add_column :taskposts, :status, :string
  end
end
