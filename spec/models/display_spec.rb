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

require 'rails_helper'

RSpec.describe Display, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
