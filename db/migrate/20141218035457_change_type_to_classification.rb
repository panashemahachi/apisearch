class ChangeTypeToClassification < ActiveRecord::Migration
  def change
rename_column :apis, :type, :classification
  end
end
