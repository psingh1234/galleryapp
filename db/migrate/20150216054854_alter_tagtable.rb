class AlterTagtable < ActiveRecord::Migration
def change
    add_column :tags, :upload_id, :integer
  end


end
