class RemoveTypeFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :type, :string
  end
end
