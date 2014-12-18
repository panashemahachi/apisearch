class CreateApis < ActiveRecord::Migration
  def change
    create_table :apis do |t|
      t.string :name
      t.string :tutorial
      t.text :description
      t.string :showcase
      t.string :tags
      t.string :type

      t.timestamps
    end
  end
end
