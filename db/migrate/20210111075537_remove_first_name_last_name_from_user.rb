class RemoveFirstNameLastNameFromUser < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :firstName, :string
    remove_column :users, :lastName, :string
  end
end
