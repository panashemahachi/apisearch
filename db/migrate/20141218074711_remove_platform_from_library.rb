class RemovePlatformFromLibrary < ActiveRecord::Migration
  def self.up
  	remove_column :libraries, :platform
  end

  def self.down
  	add_column :libraries, :platform, :string
  end
end
