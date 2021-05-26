class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :state
      t.string :city
      t.integer :zip
      t.belongs_to :contact, null: false, foreign_key: true

      t.timestamps
    end
  end
end
