class AddNameLastnameAndAgeToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :username, :string
    add_column :users, :lastname, :string
    add_column :users, :age, :integer
  end
end
