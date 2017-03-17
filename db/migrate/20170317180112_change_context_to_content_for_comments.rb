class ChangeContextToContentForComments < ActiveRecord::Migration[5.0]
  def change
    rename_column :comments, :context, :content
  end
end
