class RemoveImageFromAttachments < ActiveRecord::Migration[5.2]
  def change
    remove_column :attachments, :image, :string
  end
end
