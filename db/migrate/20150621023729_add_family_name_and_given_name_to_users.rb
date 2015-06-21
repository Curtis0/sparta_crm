class AddFamilyNameAndGivenNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :family_name, :string
    add_column :users, :given_name, :string
   #add_column :users, :given_name, :string, null: false
   # this above line will not work because this is a migration file and the
  end
end
