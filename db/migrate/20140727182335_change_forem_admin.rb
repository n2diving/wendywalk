class ChangeForemAdmin < ActiveRecord::Migration
  def change
    change_column :users, :forem_admin, :boolean, :default => true
  end
end
