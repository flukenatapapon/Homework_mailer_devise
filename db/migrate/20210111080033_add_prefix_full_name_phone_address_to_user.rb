class AddPrefixFullNamePhoneAddressToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :prefix, :string
    add_column :users, :full_name, :string
    add_column :users, :phone, :string
    add_column :users, :address, :string
  end
end
