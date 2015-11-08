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

class Display < ActiveRecord::Base
end
