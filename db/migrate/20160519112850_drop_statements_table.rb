class DropStatementsTable < ActiveRecord::Migration
  def up
    drop_table :statements
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
