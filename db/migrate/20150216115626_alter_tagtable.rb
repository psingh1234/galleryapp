class AlterTagtable < ActiveRecord::Migration
  def change
    create_table :tags do |t|
       t.string :name
      t.references :upload

      t.timestamps null: false
end
  end
end
