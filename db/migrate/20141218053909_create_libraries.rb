class CreateLibraries < ActiveRecord::Migration
  def change
    create_table :libraries do |t|
      t.string :name
      t.string :tutorial
      t.text :description
      t.string :showcase
      t.string :tags
      t.string :platform
      t.string :developer
      t.string :updated_by

      t.timestamps
    end
  end
end
