class CreateFlies < ActiveRecord::Migration
  def change
    create_table :flies do |t|
      t.string :name
      t.integer :location_id
      t.string :picture_url

      t.timestamps
    end
  end
end
