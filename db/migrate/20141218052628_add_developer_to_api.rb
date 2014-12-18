class AddDeveloperToApi < ActiveRecord::Migration
  def change
    add_column :apis, :developer, :string
  end
end
