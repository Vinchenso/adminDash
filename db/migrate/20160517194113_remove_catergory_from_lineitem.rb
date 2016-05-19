class RemoveCatergoryFromLineitem < ActiveRecord::Migration
  def change
   remove_column :lineitems, :catergory_id 
  end
end
