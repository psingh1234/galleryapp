class Album < ActiveRecord::Base
  has_many :uploads, dependent: :destroy
   validates :album_name, presence: true
   accepts_nested_attributes_for :uploads
  
end
