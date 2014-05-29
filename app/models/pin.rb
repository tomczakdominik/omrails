class Pin < ActiveRecord::Base
	validates_presence_of :description 

 	belongs_to :user
#   has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
#   #validates_attachment :image, presence: true 'image/jpeg', 'image/jpg', 'image/png', 'image/gif' ]},
#   validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
#   #                     size: { less_than: 5.megabytes }
# #
  has_attached_file :image, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>'
  }

  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  # validates :user_id, presence: true

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end
