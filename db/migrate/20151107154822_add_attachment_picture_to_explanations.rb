class AddAttachmentPictureToExplanations < ActiveRecord::Migration
  def self.up
    change_table :explanations do |t|
      t.attachment :picture
    end
  end

  def self.down
    remove_attachment :explanations, :picture
  end
end
