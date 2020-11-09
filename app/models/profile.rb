class Profile < ApplicationRecord
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: 'https://bulma.io/images/placeholders/32x32.png'
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates :fname, presence: true
  validates :lname, presence: true
  belongs_to :user
end
