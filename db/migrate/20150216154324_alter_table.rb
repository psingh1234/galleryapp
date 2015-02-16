class AlterTable < ActiveRecord::Migration
  def change
    
    add_column :tag, :upload_id, :integer
  end
end
