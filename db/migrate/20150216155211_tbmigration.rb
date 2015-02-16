class Tbmigration < ActiveRecord::Migration
  def change
    create_table :tag do |t|
      t.string :name
t.upload_id :integer
      
    end
  end
end
