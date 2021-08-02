class AddAppartIdToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :appartment_id, :int
  end
end
