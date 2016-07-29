class Topic < ActiveRecord::Base
    has_many :votes, dependent: :destroy
    
    
    has_attached_file :image, styles: {
     thumb: '100x100>',    
     medium: '640x',
     small: '400x'
     }
    
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
 

end
