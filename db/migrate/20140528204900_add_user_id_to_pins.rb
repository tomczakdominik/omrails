class AddUserIdToPins < ActiveRecord::Migration
  def change
    add_column :pins, :user, :integer
    add_index :pins, :user
  end
end
