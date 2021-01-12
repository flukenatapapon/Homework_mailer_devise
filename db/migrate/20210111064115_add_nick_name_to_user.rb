class AddNickNameToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :nickName, :string
  end
end
