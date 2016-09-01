class Note < ActiveRecord::Base

  include ActiveModel::Validations

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

  validates :image, file_size: { less_than_or_equal_to: 2.megabytes },
                     file_content_type: { allow: ['image/jpeg', 'image/png'] } 
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
