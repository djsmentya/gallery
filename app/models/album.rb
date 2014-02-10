class Album < ActiveRecord::Base
  attr_accessible :title, :person_id, :photos_attributes, :photos
  
  belongs_to :person
  has_many :photos, dependent: :destroy

  accepts_nested_attributes_for :photos, :allow_destroy => true

end
