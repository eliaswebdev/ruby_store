class Profile < ActiveRecord::Base
  belongs_to :city
  belongs_to :user

  validates :fullname, presence: true
end
