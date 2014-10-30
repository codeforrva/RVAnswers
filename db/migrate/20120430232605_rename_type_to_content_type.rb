class RenameTypeToContentType < ActiveRecord::Migration
  def change

    rename_column :articles, :type, :content_type
    
  end
end
