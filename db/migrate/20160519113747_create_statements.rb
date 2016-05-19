class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
