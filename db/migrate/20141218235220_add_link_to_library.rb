class AddLinkToLibrary < ActiveRecord::Migration
  def change
    add_column :libraries, :link, :string
  end
end
