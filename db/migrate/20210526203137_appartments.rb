class Appartments < ActiveRecord::Migration[6.0]
  def change
    create_table :appartments do |t|
      t.string :block_name
      t.integer :number_of_appart
    end
  end
end
