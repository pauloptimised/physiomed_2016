# == Schema Information
#
# Table name: landing_pages_guides
#
#  id              :integer          not null, primary key
#  guide_id        :integer
#  landing_page_id :integer
#  display         :boolean          default(TRUE), not null
#  position        :integer          default(0), not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'rails_helper'

RSpec.describe LandingPages::Guide, type: :model do
  describe 'validations' do
    it { should belong_to :landing_page }
    it { should belong_to :guide }
  end
end
