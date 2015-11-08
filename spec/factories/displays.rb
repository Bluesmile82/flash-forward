# == Schema Information
#
# Table name: displays
#
#  id              :integer          not null, primary key
#  category        :string
#  last_content_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :display do
    category "MyString"
    last_content_id 1
  end
end
