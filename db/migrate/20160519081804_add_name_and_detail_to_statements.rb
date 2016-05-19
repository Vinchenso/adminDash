class AddNameAndDetailToStatements < ActiveRecord::Migration
  def change
    add_column :statements, :name, :string
    add_column :statements, :detail, :string
  end
end
