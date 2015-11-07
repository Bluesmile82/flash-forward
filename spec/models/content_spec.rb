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

require 'rails_helper'

RSpec.describe Content, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
