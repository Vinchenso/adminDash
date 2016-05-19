class CreateLineitems < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.references :catergory, index: true, foreign_key: true
      t.integer :amount
      t.date :date
      t.text :description

      t.timestamps null: false
    end
  end
end
