class AddAttachmentAvatarToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |t|
      t.attachment :avatar
    end
  end

  def self.down
    drop_attached_file :pins, :avatar
  end
end
