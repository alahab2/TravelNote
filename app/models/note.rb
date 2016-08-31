class Note < ActiveRecord::Base
  validates :title,
            presence: true

  validates :text,
            presence: true

  validates :location,
            presence: true

  # before_create :owner
  belongs_to :user
  # def owner
  #     self.user_id = current_user.id
  # end

  

  mount_uploader :image, ImageUploader

  # has_attached_file :image,
  #                   styles: { 
  #                     thumb: ["100x100>", :jpg], 
  #                     medium: ["400x400>", :jpg],
  #                     original: ["800x800>", :jpg]
  #                     },
  #                   default_url: "/images/:style/missing.png",  
  #                   :storage => :cloudinary

  # validates_attachment :image,
  #                      content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] },
  #                      size: { in: 0..1500.kilobytes }

end
