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

  has_attached_file :image,
                     styles: { thumb: ["64x64#", :jpg] }
  validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }

end
