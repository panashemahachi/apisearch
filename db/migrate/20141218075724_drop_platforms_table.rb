class DropPlatformsTable < ActiveRecord::Migration
  def up
    drop_table :platforms
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end

end
