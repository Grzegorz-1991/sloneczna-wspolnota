class AddPhoneNumberUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :phone_number, :int
  end
end
