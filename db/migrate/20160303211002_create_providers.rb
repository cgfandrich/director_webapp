class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :description
      t.string :name
      t.float :geo_lng
      t.float :geo_lat

      t.timestamps null: false
    end
  end
end
