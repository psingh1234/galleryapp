class CreateUploads < ActiveRecord::Migration
  def change
    create_table :uploads do |t|
      t.references :album

      t.timestamps null: false
    end
  end
end
