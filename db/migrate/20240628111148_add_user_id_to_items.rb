class AddUserIdToItems < ActiveRecord::Migration[7.1]
  def change
    add_column :items, :user_id, :int
  end
end
