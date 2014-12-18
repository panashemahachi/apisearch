class AddPlatformidToLibrary < ActiveRecord::Migration
  def change
    add_column :libraries, :platform_id, :integer
  end
end
