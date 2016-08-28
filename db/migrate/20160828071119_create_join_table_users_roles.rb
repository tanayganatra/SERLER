class CreateJoinTableUsersRoles < ActiveRecord::Migration
  def change
    create_join_table :users, :roles, table_name: :users_roles do |t|
      # t.index [:user_id, :role_id]
      # t.index [:role_id, :user_id]
      t.boolean :is_active
    end
  end
end
