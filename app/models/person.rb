class Person < ActiveRecord::Base
  attr_accessible :birthday, :full_name, :gender, :relation, :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_many :albums ,dependent: :destroy

end
