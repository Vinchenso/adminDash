class CreateStatements < ActiveRecord::Migration
  def change
    create_table :statements do |t|

      t.references :lineitem, index: true
      t.timestamps null: false
    end
  end
end
