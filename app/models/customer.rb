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

class Customer < ActiveRecord::Base
  # validates happens at the stage of the .save in the controller's create method
  validates :family_name,
    presence: true, length: { maximum: 20 }
  validates :given_name,
    presence: true, length: { maximum: 20 }
  validates :email_string,
    presence: true, format: { with: VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :company_id,
    presence: true

  belongs_to :company
  has_many   :comments

  def full_name
    full_name = family_name + given_name
    full_name
  end

end
