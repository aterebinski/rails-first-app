class RenameTagToBodyOnTags < ActiveRecord::Migration[6.0]
  def change
    rename_column :tags, :tag, :body
  end
end
