class Person < ActiveRecord::Base
  attr_accessible :birthday, :full_name, :gender, :relation, :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  has_one :album ,dependent: :destroy
  after_create :create_album



  def create_album
    Album.create title: "My album", person_id: self.id
  end


end
