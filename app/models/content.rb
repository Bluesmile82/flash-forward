# == Schema Information
#
# Table name: contents
#
#  id                   :integer          not null, primary key
#  comment              :string
#  order                :integer
#  category             :string
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  picture_file_name    :string
#  picture_content_type :string
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#

class Content < ActiveRecord::Base
  validates :picture, presence: true
  has_attached_file :picture,
    styles: { medium: "300x300>", thumb: "100x100>" }

  validates_attachment_content_type :picture,
    content_type: /\Aimage\/.*\z/
end
