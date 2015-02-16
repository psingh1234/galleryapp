class Tbmigration < ActiveRecord::Migration
  def change
    create_table :tag do |t|
      t.string :name
t.integer :upload_id
      
    end
  end
end
