class Album < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :person
  has_many :photos, dependent: :destroy
end
