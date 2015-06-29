# == Schema Information
#
# Table name: customers
#
#  id           :integer          not null, primary key
#  family_name  :string
#  given_name   :string
#  email_string :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  company_id   :integer
#

require 'test_helper'

class CustomerTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
