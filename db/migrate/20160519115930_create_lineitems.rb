class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.string :description
      t.decimal :amount
      t.belongs_to :statement, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
