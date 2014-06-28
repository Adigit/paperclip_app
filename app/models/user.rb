class User < ActiveRecord::Base
  has_attached_file :avatar,
                    :styles => {
                        :thumb => "75*75",
                        :nail => "100*100"
                    }

  validates_attachment :avatar, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }
end
