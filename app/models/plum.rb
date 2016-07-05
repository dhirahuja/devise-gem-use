class Plum < ActiveRecord::Base
	has_attached_file :image,  styles: { thumb: ["64x64#"] ,small: ["100x100"], medium: ["150x150"]}
	  has_many :comments
	  validates :name, presence: true,
                    length: { minimum: 5 }
      validates_attachment :image,
                     content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }


end
