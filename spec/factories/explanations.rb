# == Schema Information
#
# Table name: explanations
#
#  id                   :integer          not null, primary key
#  text                 :string
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
  factory :explanation do
    text "MyString"
    category "MyString"
  end
end
