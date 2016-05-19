class AddStatementToLineitem < ActiveRecord::Migration
  def change
    add_reference :lineitems, :statement, index: true
  end
end
