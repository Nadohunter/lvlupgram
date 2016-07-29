class Topic < ActiveRecord::Base
     has_many :votes, dependent: :destroy
    has_attached_file :image, styles: {
      thumb: '100x100>',
      square: '200x200#',
      medium: '300x300>'
     } 
     #:url => '/public/:attachment/000/000/:id/:style_:basename.:extension'


    # Validate the attached image is image/jpg, image/png, etc
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
 

end
