class DropLineitemsTable < ActiveRecord::Migration
  def up
    drop_table :lineitems
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
