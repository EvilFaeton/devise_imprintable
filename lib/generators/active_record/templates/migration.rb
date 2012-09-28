class DeviseInvitableAddTo<%= table_name.camelize %> < ActiveRecord::Migration
  def up
    change_table :<%= table_name %> do |t|
      t.datetime   :first_sign_in_at
      t.string     :first_sign_in_ip
    end
  end

  def down
    change_table :<%= table_name %> do |t|
      t.remove :first_sign_ip, :first_sign_in_at
    end
  end
end