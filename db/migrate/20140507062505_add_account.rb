class AddAccount < ActiveRecord::Migration
  def change
    create_table "account", :force => true do |t|
      t.text "email", :null => false
    end

    add_index "account", ["email"], :name => "index_account_on_email", :unique => true
  end
end
