class Upload < ActiveRecord::Base
  
    belongs_to :album
    
      has_many :tags, dependent: :destroy 
      
      accepts_nested_attributes_for :tags
      has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

 
end
