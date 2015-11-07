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

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :content do
    comment "MyString"
    order 1
    category "MyString"
  end
end
