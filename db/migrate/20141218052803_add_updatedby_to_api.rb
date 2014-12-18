class AddUpdatedbyToApi < ActiveRecord::Migration
  def change
    add_column :apis, :updated_by, :string
  end
end
